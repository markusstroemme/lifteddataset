@global_var_4a95b = external constant [6 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2d4d5:
  %.reg2mem = alloca i8, align 1
  %0 = call i64 @_Znwm(i64 1)
  %1 = inttoptr i64 %0 to ptr
  store i8 65, ptr %1, align 1
  %2 = icmp eq i64 %0, 0
  store i8 65, ptr %.reg2mem, align 1
  br i1 %2, label %dec_label_pc_2d514, label %dec_label_pc_2d507

dec_label_pc_2d507:                               ; preds = %dec_label_pc_2d4d5
  %3 = inttoptr i64 %0 to ptr
  %4 = call i64 @_ZdlPvm(ptr %3, i64 1)
  %.pre = load i8, ptr %1, align 1
  store i8 %.pre, ptr %.reg2mem, align 1
  br label %dec_label_pc_2d514

dec_label_pc_2d514:                               ; preds = %dec_label_pc_2d507, %dec_label_pc_2d4d5
  %.reload = load i8, ptr %.reg2mem, align 1
  call void @printHexCharLine(i8 %.reload)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_3b981:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a95b, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

