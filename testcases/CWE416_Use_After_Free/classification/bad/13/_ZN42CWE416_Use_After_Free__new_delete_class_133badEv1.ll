@global_var_4a944 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_30c1e:
  %0 = call i64 @_Znwm(i64 8)
  %1 = inttoptr i64 %0 to ptr
  store i32 1, ptr %1, align 4
  %2 = add i64 %0, 4
  %3 = inttoptr i64 %2 to ptr
  store i32 2, ptr %3, align 4
  %4 = icmp eq i64 %0, 0
  br i1 %4, label %dec_label_pc_30c76, label %dec_label_pc_30c69

dec_label_pc_30c69:                               ; preds = %dec_label_pc_30c1e
  %5 = inttoptr i64 %0 to ptr
  %6 = call i64 @_ZdlPvm(ptr %5, i64 8)
  br label %dec_label_pc_30c76

dec_label_pc_30c76:                               ; preds = %dec_label_pc_30c69, %dec_label_pc_30c1e
  %7 = load i32, ptr %1, align 4
  call void @printIntLine(i32 %7)
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

