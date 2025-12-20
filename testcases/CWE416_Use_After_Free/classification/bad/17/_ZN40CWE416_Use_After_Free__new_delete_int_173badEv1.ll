@global_var_4a944 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_35dad:
  %.reg2mem = alloca i32, align 4
  %0 = call i64 @_Znwm(i64 4)
  %1 = inttoptr i64 %0 to ptr
  store i32 5, ptr %1, align 4
  %2 = icmp eq i64 %0, 0
  store i32 5, ptr %.reg2mem, align 4
  br i1 %2, label %dec_label_pc_35e05, label %dec_label_pc_35dce

dec_label_pc_35dce:                               ; preds = %dec_label_pc_35dad
  %3 = inttoptr i64 %0 to ptr
  %4 = call i64 @_ZdlPvm(ptr %3, i64 4)
  %.pre = load i32, ptr %1, align 4
  store i32 %.pre, ptr %.reg2mem, align 4
  br label %dec_label_pc_35e05

dec_label_pc_35e05:                               ; preds = %dec_label_pc_35dce, %dec_label_pc_35dad
  %.reload = load i32, ptr %.reg2mem, align 4
  call void @printIntLine(i32 %.reload)
  ret i64 ptrtoint (ptr @0 to i64)
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

