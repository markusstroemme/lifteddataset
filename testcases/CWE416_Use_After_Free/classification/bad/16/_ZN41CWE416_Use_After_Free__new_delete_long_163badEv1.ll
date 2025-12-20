@global_var_4a951 = external constant [5 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_38199:
  %.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 8)
  %1 = inttoptr i64 %0 to ptr
  store i64 5, ptr %1, align 8
  %2 = icmp eq i64 %0, 0
  store i64 5, ptr %.reg2mem, align 8
  br i1 %2, label %dec_label_pc_381dc, label %dec_label_pc_381cf

dec_label_pc_381cf:                               ; preds = %dec_label_pc_38199
  %3 = call i64 @_ZdlPvm(ptr %1, i64 8)
  %.pre = load i64, ptr %1, align 8
  store i64 %.pre, ptr %.reg2mem, align 8
  br label %dec_label_pc_381dc

dec_label_pc_381dc:                               ; preds = %dec_label_pc_381cf, %dec_label_pc_38199
  %.reload = load i64, ptr %.reg2mem, align 8
  call void @printLongLine(i64 %.reload)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3b8f7:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a951, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

