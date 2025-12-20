@global_var_4a944 = external constant [4 x i8]
@0 = external global i32
@global_var_63078 = external local_unnamed_addr global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_2fcdf:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_63078, align 4
  %1 = icmp eq i32 %0, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %1, label %dec_label_pc_2fd37, label %dec_label_pc_2fd20

dec_label_pc_2fd20:                               ; preds = %dec_label_pc_2fcdf
  %2 = call i64 @_Znwm(i64 8)
  %3 = inttoptr i64 %2 to ptr
  store i32 1, ptr %3, align 4
  %4 = add i64 %2, 4
  %5 = inttoptr i64 %4 to ptr
  store i32 2, ptr %5, align 4
  %.pr = load i32, ptr @global_var_63078, align 4
  %6 = icmp eq i32 %.pr, 0
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %6, label %dec_label_pc_2fd37, label %dec_label_pc_2fd2a

dec_label_pc_2fd2a:                               ; preds = %dec_label_pc_2fd20
  %7 = load i32, ptr %3, align 4
  call void @printIntLine(i32 %7)
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_2fd37

dec_label_pc_2fd37:                               ; preds = %dec_label_pc_2fcdf, %dec_label_pc_2fd2a, %dec_label_pc_2fd20
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_3b862:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a944, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @_Znwm(i64) local_unnamed_addr

