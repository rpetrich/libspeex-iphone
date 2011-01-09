SOURCE_PATH = speex/libspeex/
GO_EASY_ON_ME=1

LIBRARY_NAME = libspeex
libspeex_FILES = $(SOURCE_PATH)cb_search.c $(SOURCE_PATH)exc_10_32_table.c $(SOURCE_PATH)exc_8_128_table.c $(SOURCE_PATH)filters.c $(SOURCE_PATH)gain_table.c $(SOURCE_PATH)hexc_table.c $(SOURCE_PATH)high_lsp_tables.c $(SOURCE_PATH)lsp.c $(SOURCE_PATH)ltp.c $(SOURCE_PATH)speex.c $(SOURCE_PATH)stereo.c $(SOURCE_PATH)vbr.c $(SOURCE_PATH)vq.c $(SOURCE_PATH)bits.c $(SOURCE_PATH)exc_10_16_table.c $(SOURCE_PATH)exc_20_32_table.c $(SOURCE_PATH)exc_5_256_table.c $(SOURCE_PATH)exc_5_64_table.c $(SOURCE_PATH)gain_table_lbr.c $(SOURCE_PATH)hexc_10_32_table.c $(SOURCE_PATH)lpc.c $(SOURCE_PATH)lsp_tables_nb.c $(SOURCE_PATH)modes.c $(SOURCE_PATH)modes_wb.c $(SOURCE_PATH)nb_celp.c $(SOURCE_PATH)quant_lsp.c $(SOURCE_PATH)sb_celp.c $(SOURCE_PATH)speex_callbacks.c $(SOURCE_PATH)speex_header.c $(SOURCE_PATH)window.c $(SOURCE_PATH)resample.c $(SOURCE_PATH)buffer.c $(SOURCE_PATH)mdf.c $(SOURCE_PATH)preprocess.c $(SOURCE_PATH)scal.c $(SOURCE_PATH)filterbank.c $(SOURCE_PATH)fftwrap.c $(SOURCE_PATH)smallft.c
libspeex_LDFLAGS = -fvisibility=hidden

ADDITIONAL_CFLAGS = -std=c99 -I $(SOURCE_PATH) -I speex/include -include config.h

include framework/makefiles/common.mk
include framework/makefiles/library.mk

internal-stage::
	mkdir -p $(THEOS_STAGING_DIR)/usr/include/speex
	cp -r speex/include/speex/*.h $(FW_STAGING_DIR)/usr/include/speex/
