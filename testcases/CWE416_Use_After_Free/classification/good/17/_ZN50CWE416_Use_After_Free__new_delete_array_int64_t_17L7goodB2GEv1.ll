@global_var_320 = external constant [20 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_22793:
  %0 = alloca i64, align 8
  %rax.1.reg2mem = alloca i64, align 8
  %storemerge34.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = and i64 %1, 4294967295
  %3 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge34.reg2mem, align 8
  br label %dec_label_pc_227ab

dec_label_pc_227ab:                               ; preds = %dec_label_pc_227ab, %dec_label_pc_22793
  %storemerge34.reload = load i64, ptr %storemerge34.reg2mem, align 8
  %4 = mul i64 %storemerge34.reload, 8
  %5 = add i64 %4, %3
  %6 = inttoptr i64 %5 to ptr
  store i64 5, ptr %6, align 8
  %7 = add nuw nsw i64 %storemerge34.reload, 1
  %exitcond6 = icmp eq i64 %7, 100
  store i64 %7, ptr %storemerge34.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_227d1, label %dec_label_pc_227ab

dec_label_pc_227d1:                               ; preds = %dec_label_pc_227ab
  %8 = icmp eq i64 %3, 0
  store i64 %5, ptr %rax.1.reg2mem, align 8
  br i1 %8, label %dec_label_pc_227fb.preheader, label %dec_label_pc_227d8

dec_label_pc_227d8:                               ; preds = %dec_label_pc_227d1
  %9 = inttoptr i64 %2 to ptr
  %10 = inttoptr i64 %3 to ptr
  call void @_ZdaPv(ptr %10, ptr %9)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.1.reg2mem, align 8
  br label %dec_label_pc_227fb.preheader

dec_label_pc_227fb.preheader:                     ; preds = %dec_label_pc_227d1, %dec_label_pc_227d8
  %rax.1.reload = load i64, ptr %rax.1.reg2mem, align 8
  ret i64 %rax.1.reload
}

declare i64 @_Znam(i64) local_unnamed_addr

declare void @_ZdaPv(ptr, ptr) local_unnamed_addr

