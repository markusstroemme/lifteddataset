@global_var_bccd0 = external constant [16 x i8]
@global_var_bcce0 = external constant [32 x i8]
@global_var_c0760 = external constant [4 x i8]
@0 = external global i32
@global_var_ef090 = external local_unnamed_addr global ptr

define void @anon0(ptr %result, i32 %arg2) local_unnamed_addr {
dec_label_pc_7dcb0:
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = bitcast ptr %result to ptr
  store i32 %arg2, ptr %1, align 4
  store i64 0, ptr %stack_var_-30, align 8
  %2 = load ptr, ptr @global_var_ef090, align 8
  %3 = bitcast ptr %stack_var_-30 to ptr
  %4 = call ptr @fgets(ptr nonnull %3, i32 14, ptr %2)
  %5 = icmp eq ptr %4, null
  %6 = icmp eq i1 %5, false
  %7 = icmp eq i1 %6, false
  br i1 %7, label %dec_label_pc_7dd26, label %dec_label_pc_7dd12

dec_label_pc_7dd12:                               ; preds = %dec_label_pc_7dcb0
  %8 = call i32 @atoi(ptr nonnull %3)
  store i32 %8, ptr %1, align 4
  br label %dec_label_pc_7dd35

dec_label_pc_7dd26:                               ; preds = %dec_label_pc_7dcb0
  call void @printLine(ptr @global_var_bccd0)
  br label %dec_label_pc_7dd35

dec_label_pc_7dd35:                               ; preds = %dec_label_pc_7dd26, %dec_label_pc_7dd12
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_7dd4a, label %dec_label_pc_7dd45

dec_label_pc_7dd45:                               ; preds = %dec_label_pc_7dd35
  call void @__stack_chk_fail()
  br label %dec_label_pc_7dd4a

dec_label_pc_7dd4a:                               ; preds = %dec_label_pc_7dd45, %dec_label_pc_7dd35
  ret void
}

define void @anon1(ptr %result) local_unnamed_addr {
dec_label_pc_7dd4c:
  %0 = alloca i64, align 8
  %indvars.iv.reg2mem = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %stack_var_-8 = alloca i64, align 8
  %2 = call i64 @__readfsqword(i64 40)
  %3 = trunc i64 %1 to i32
  %4 = icmp slt i32 %3, 0
  br i1 %4, label %dec_label_pc_7ddd2, label %dec_label_pc_7dd9d

dec_label_pc_7dd9d:                               ; preds = %dec_label_pc_7dd4c
  %5 = ptrtoint ptr %stack_var_-8 to i64
  %sext = mul i64 %1, 4294967296
  %6 = ashr exact i64 %sext, 30
  %7 = add i64 %5, -48
  %8 = add i64 %7, %6
  %9 = inttoptr i64 %8 to ptr
  store i32 1, ptr %9, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_7ddb6

dec_label_pc_7ddb6:                               ; preds = %dec_label_pc_7ddb6, %dec_label_pc_7dd9d
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %10 = mul i64 %indvars.iv.reload, 4
  %11 = add i64 %10, %7
  %12 = inttoptr i64 %11 to ptr
  %13 = load i32, ptr %12, align 4
  call void @printIntLine(i32 %13)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_7dde1, label %dec_label_pc_7ddb6

dec_label_pc_7ddd2:                               ; preds = %dec_label_pc_7dd4c
  call void @printLine(ptr @global_var_bcce0)
  br label %dec_label_pc_7dde1

dec_label_pc_7dde1:                               ; preds = %dec_label_pc_7ddb6, %dec_label_pc_7ddd2
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %2, %14
  br i1 %15, label %dec_label_pc_7ddf6, label %dec_label_pc_7ddf1

dec_label_pc_7ddf1:                               ; preds = %dec_label_pc_7dde1
  call void @__stack_chk_fail()
  br label %dec_label_pc_7ddf6

dec_label_pc_7ddf6:                               ; preds = %dec_label_pc_7ddf1, %dec_label_pc_7dde1
  ret void
}

define i64 @anon2() local_unnamed_addr {
dec_label_pc_7e01e:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @_Znwm(i64 4)
  %1 = inttoptr i64 %0 to ptr
  call void @anon0(ptr %1, i32 -1)
  %2 = icmp eq i64 %0, 0
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_7e091, label %dec_label_pc_7e05b

dec_label_pc_7e05b:                               ; preds = %dec_label_pc_7e01e
  call void @anon1(ptr %1)
  %3 = call i64 @_ZdlPvm(ptr %1, i64 4)
  store i64 %3, ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_7e091

dec_label_pc_7e091:                               ; preds = %dec_label_pc_7e05b, %dec_label_pc_7e01e
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

declare i64 @_Znwm(i64) local_unnamed_addr

declare i64 @_ZdlPvm(ptr, i64) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

