@global_var_b53e8 = external constant [16 x i8]
@global_var_b53f8 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec080 = external local_unnamed_addr global ptr

define i32 @staticReturnsTrue.405() local_unnamed_addr {
dec_label_pc_28987:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_289a5:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %stack_var_-48.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @staticReturnsTrue.405()
  %2 = icmp eq i32 %1, 0
  store i32 -1, ptr %stack_var_-48.0.reg2mem, align 4
  br i1 %2, label %dec_label_pc_28a27, label %dec_label_pc_289d5

dec_label_pc_289d5:                               ; preds = %dec_label_pc_289a5
  store i64 0, ptr %stack_var_-30, align 8
  %3 = load ptr, ptr @global_var_ec080, align 8
  %4 = bitcast ptr %stack_var_-30 to ptr
  %5 = call ptr @fgets(ptr nonnull %4, i32 14, ptr %3)
  %6 = icmp eq ptr %5, null
  br i1 %6, label %dec_label_pc_28a18, label %dec_label_pc_28a07

dec_label_pc_28a07:                               ; preds = %dec_label_pc_289d5
  %7 = call i32 @atoi(ptr nonnull %4)
  store i32 %7, ptr %stack_var_-48.0.reg2mem, align 4
  br label %dec_label_pc_28a27

dec_label_pc_28a18:                               ; preds = %dec_label_pc_289d5
  call void @printLine(ptr @global_var_b53e8)
  store i32 -1, ptr %stack_var_-48.0.reg2mem, align 4
  br label %dec_label_pc_28a27

dec_label_pc_28a27:                               ; preds = %dec_label_pc_28a18, %dec_label_pc_28a07, %dec_label_pc_289a5
  %8 = call i32 @staticReturnsTrue.405()
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %dec_label_pc_28af2, label %dec_label_pc_28a39

dec_label_pc_28a39:                               ; preds = %dec_label_pc_28a27
  %stack_var_-48.0.reload = load i32, ptr %stack_var_-48.0.reg2mem, align 4
  %10 = call ptr @malloc(i32 40)
  %11 = ptrtoint ptr %10 to i64
  %12 = icmp eq ptr %10, null
  %13 = icmp eq i1 %12, false
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br i1 %13, label %dec_label_pc_28a61, label %dec_label_pc_28a4e

dec_label_pc_28a4e:                               ; preds = %dec_label_pc_28a39
  call void @exit(i32 -1)
  unreachable

dec_label_pc_28a61:                               ; preds = %dec_label_pc_28a39, %dec_label_pc_28a61
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %14 = mul i64 %indvars.iv4.reload, 4
  %15 = add i64 %14, %11
  %16 = inttoptr i64 %15 to ptr
  store i32 0, ptr %16, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_28a85, label %dec_label_pc_28a61

dec_label_pc_28a85:                               ; preds = %dec_label_pc_28a61
  %17 = icmp slt i32 %stack_var_-48.0.reload, 0
  br i1 %17, label %dec_label_pc_28ad7, label %dec_label_pc_28a8b

dec_label_pc_28a8b:                               ; preds = %dec_label_pc_28a85
  %18 = sext i32 %stack_var_-48.0.reload to i64
  %19 = mul i64 %18, 4
  %20 = add i64 %19, %11
  %21 = inttoptr i64 %20 to ptr
  store i32 1, ptr %21, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_28aae

dec_label_pc_28aae:                               ; preds = %dec_label_pc_28aae, %dec_label_pc_28a8b
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %22 = mul i64 %indvars.iv.reload, 4
  %23 = add i64 %22, %11
  %24 = inttoptr i64 %23 to ptr
  %25 = load i32, ptr %24, align 4
  call void @printIntLine(i32 %25)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_28ae6, label %dec_label_pc_28aae

dec_label_pc_28ad7:                               ; preds = %dec_label_pc_28a85
  call void @printLine(ptr @global_var_b53f8)
  br label %dec_label_pc_28ae6

dec_label_pc_28ae6:                               ; preds = %dec_label_pc_28aae, %dec_label_pc_28ad7
  call void @free(ptr %10)
  br label %dec_label_pc_28af2

dec_label_pc_28af2:                               ; preds = %dec_label_pc_28ae6, %dec_label_pc_28a27
  %26 = call i64 @__readfsqword(i64 40)
  %27 = icmp eq i64 %0, %26
  br i1 %27, label %dec_label_pc_28b07, label %dec_label_pc_28b02

dec_label_pc_28b02:                               ; preds = %dec_label_pc_28af2
  call void @__stack_chk_fail()
  br label %dec_label_pc_28b07

dec_label_pc_28b07:                               ; preds = %dec_label_pc_28b02, %dec_label_pc_28af2
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_9fe8c:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_9feaf, label %dec_label_pc_9fea3

dec_label_pc_9fea3:                               ; preds = %dec_label_pc_9fe8c
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_9feaf

dec_label_pc_9feaf:                               ; preds = %dec_label_pc_9fea3, %dec_label_pc_9fe8c
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_9fee7:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bd318, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare ptr @fgets(ptr, i32, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

