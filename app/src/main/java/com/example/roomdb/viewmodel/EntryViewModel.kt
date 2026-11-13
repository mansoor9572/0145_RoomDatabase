package com.example.roomdb.viewmodel

import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.setValue
import androidx.lifecycle.ViewModel
import com.example.roomdb.room.Siswa
import com.example.roomdb.repositori.RepositoriSiswa

class EntryViewModel(private val repositoriSiswa: RepositoriSiswa): ViewModel() {

    /**
     * Berisi status Siswa saat ini
     */
    var uiStateSiswa by mutableStateOf(UIStatesSiswa())
        private set

    /* Fungsi untuk memvalidasi input */
    private fun validasiInput(uiState: DetailsSiswa = uiStateSiswa.detailsSiswa ): Boolean {
        return with(uiState) {
            nama.isNotBlank() && alamat.isNotBlank() && telpon.isNotBlank()
        }
    }

    fun updateUiState(detailsSiswa: DetailsSiswa) {
        uiStateSiswa =
            UIStatesSiswa(detailsSiswa = detailsSiswa, isEntryValid = validasiInput(detailsSiswa))
    }

    /* Fungsi untuk menyimpan data yang di-entry */
    suspend fun saveSiswa() {
        if (validasiInput()) {
            repositoriSiswa.insertSiswa(uiStateSiswa.detailsSiswa.toSiswa())
        }
    }
}

/**
 * Mewakili Status Ui untuk Siswa.
 */
data class UIStatesSiswa(
    val detailsSiswa: DetailsSiswa = DetailsSiswa(),
    val isEntryValid: Boolean = false
)

data class DetailsSiswa(
    val id: Int = 0,
    val nama: String = "",
    val alamat: String = "",
    val telpon: String = "",
)

/* Fungsi untuk mengkonversi data input ke data dalam tabel sesuai jenis datanya*/
fun DetailsSiswa.toSiswa(): Siswa = Siswa(
    id = id,
    nama = nama,
    alamat = alamat,
    telpon = telpon
)

fun Siswa.toUiStateSiswa(isEntryValid: Boolean = false): UIStatesSiswa = UIStatesSiswa(
    detailsSiswa = this.toDetailsSiswa(),
    isEntryValid = isEntryValid
)

fun Siswa.toDetailsSiswa(): DetailsSiswa = DetailsSiswa(
    id = id,
    nama = nama,
    alamat = alamat,
    telpon = telpon
)
