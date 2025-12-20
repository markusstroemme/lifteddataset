@global_var_b4758 = external constant [32 x i8]
@global_var_b4778 = external constant [21 x i8]
@global_var_c0760 = external constant [4 x i8]
@global_var_ef080 = external local_unnamed_addr global i32
@global_var_ef300 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_da90:
  %indvars.iv.reg2mem = alloca i64, align 8
  %stack_var_-64.0.reg2mem = alloca i32, align 4
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_ef300, align 4
  %2 = icmp eq i32 %1, 0
  store i32 7, ptr %stack_var_-64.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_dad4, label %dec_label_pc_dabc

dec_label_pc_dabc:                                ; preds = %dec_label_pc_da90
  call void @printLine(ptr @global_var_b4778)
  store i32 -1, ptr %stack_var_-64.0.reg2mem, align 4
  br label %dec_label_pc_dad4

dec_label_pc_dad4:                                ; preds = %dec_label_pc_da90, %dec_label_pc_dabc
  %3 = load i32, ptr @global_var_ef080, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %dec_label_pc_db4d, label %dec_label_pc_dade

dec_label_pc_dade:                                ; preds = %dec_label_pc_dad4
  %stack_var_-64.0.reload = load i32, ptr %stack_var_-64.0.reg2mem, align 4
  %5 = icmp slt i32 %stack_var_-64.0.reload, 0
  br i1 %5, label %dec_label_pc_db3e, label %dec_label_pc_db0c

dec_label_pc_db0c:                                ; preds = %dec_label_pc_dade
  %6 = ptrtoint ptr %stack_var_-8 to i64
  %7 = sext i32 %stack_var_-64.0.reload to i64
  %8 = mul i64 %7, 4
  %9 = add i64 %6, -48
  %10 = add i64 %8, %9
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_db22

dec_label_pc_db22:                                ; preds = %dec_label_pc_db22, %dec_label_pc_db0c
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %12 = mul i64 %indvars.iv.reload, 4
  %13 = add i64 %12, %9
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_db4d, label %dec_label_pc_db22

dec_label_pc_db3e:                                ; preds = %dec_label_pc_dade
  call void @printLine(ptr @global_var_b4758)
  br label %dec_label_pc_db4d

dec_label_pc_db4d:                                ; preds = %dec_label_pc_db22, %dec_label_pc_db3e, %dec_label_pc_dad4
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  br i1 %17, label %dec_label_pc_db62, label %dec_label_pc_db5d

dec_label_pc_db5d:                                ; preds = %dec_label_pc_db4d
  call void @__stack_chk_fail()
  br label %dec_label_pc_db62

dec_label_pc_db62:                                ; preds = %dec_label_pc_db5d, %dec_label_pc_db4d
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_a0716:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_c0760, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

