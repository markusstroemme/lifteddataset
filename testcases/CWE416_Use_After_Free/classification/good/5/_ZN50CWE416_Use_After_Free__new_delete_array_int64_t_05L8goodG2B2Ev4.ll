@global_var_320 = external constant [20 x i8]
@global_var_4a951 = external constant [5 x i8]
@0 = external global i32
@global_var_63050 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_20acd:
  %rax.0.reg2mem = alloca i64, align 8
  %storemerge2.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_63050, align 4
  %1 = icmp eq i32 %0, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_20b42, label %dec_label_pc_20aeb

dec_label_pc_20aeb:                               ; preds = %dec_label_pc_20acd
  %2 = call i64 @_Znam(i64 ptrtoint (ptr @global_var_320 to i64))
  store i64 0, ptr %storemerge2.reg2mem, align 8
  br label %dec_label_pc_20b03

dec_label_pc_20b03:                               ; preds = %dec_label_pc_20b03, %dec_label_pc_20aeb
  %storemerge2.reload = load i64, ptr %storemerge2.reg2mem, align 8
  %3 = mul i64 %storemerge2.reload, 8
  %4 = add i64 %3, %2
  %5 = inttoptr i64 %4 to ptr
  store i64 5, ptr %5, align 8
  %6 = add nuw nsw i64 %storemerge2.reload, 1
  %exitcond = icmp eq i64 %6, 100
  store i64 %6, ptr %storemerge2.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_20b29, label %dec_label_pc_20b03

dec_label_pc_20b29:                               ; preds = %dec_label_pc_20b03
  %.pr = load i32, ptr @global_var_63050, align 4
  %7 = icmp eq i32 %.pr, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %7, label %dec_label_pc_20b42, label %dec_label_pc_20b33

dec_label_pc_20b33:                               ; preds = %dec_label_pc_20b29
  %8 = inttoptr i64 %2 to ptr
  %9 = load i64, ptr %8, align 8
  call void @printLongLongLine(i64 %9)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_20b42

dec_label_pc_20b42:                               ; preds = %dec_label_pc_20acd, %dec_label_pc_20b33, %dec_label_pc_20b29
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_3b925:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
  ret void
}

declare i64 @_Znam(i64) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

