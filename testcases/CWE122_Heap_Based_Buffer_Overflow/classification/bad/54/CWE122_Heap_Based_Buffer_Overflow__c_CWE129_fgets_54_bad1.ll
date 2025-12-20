@global_var_b5c8c = external constant [16 x i8]
@global_var_b5ca0 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_2fa72:
  %stack_var_-36.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ec080, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_2fad7, label %dec_label_pc_2fac6

dec_label_pc_2fac6:                               ; preds = %dec_label_pc_2fa72
  %5 = call i32 @atoi(ptr nonnull %2)
  store i32 %5, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_2fae6

dec_label_pc_2fad7:                               ; preds = %dec_label_pc_2fa72
  call void @printLine(ptr @global_var_b5c8c)
  store i32 -1, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_2fae6

dec_label_pc_2fae6:                               ; preds = %dec_label_pc_2fad7, %dec_label_pc_2fac6
  %stack_var_-36.0.reload = load i32, ptr %stack_var_-36.0.reg2mem, align 4
  call void @anon1(i32 %stack_var_-36.0.reload)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_2fb05, label %dec_label_pc_2fb00

dec_label_pc_2fb00:                               ; preds = %dec_label_pc_2fae6
  call void @__stack_chk_fail()
  br label %dec_label_pc_2fb05

dec_label_pc_2fb05:                               ; preds = %dec_label_pc_2fb00, %dec_label_pc_2fae6
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_2fbe2:
  call void @anon2(i32 %data)
  ret void
}

define void @anon2(i32 %data) local_unnamed_addr {
dec_label_pc_2fc36:
  call void @anon3(i32 %data)
  ret void
}

define void @anon3(i32 %data) local_unnamed_addr {
dec_label_pc_2fc8a:
  call void @anon4(i32 %data)
  ret void
}

define void @anon4(i32 %data) local_unnamed_addr {
dec_label_pc_2fcde:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv4.reg2mem = alloca i64, align 8
  %0 = call ptr @malloc(i32 40)
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  store i64 0, ptr %indvars.iv4.reg2mem, align 8
  br i1 %3, label %dec_label_pc_2fd15, label %dec_label_pc_2fd02

dec_label_pc_2fd02:                               ; preds = %dec_label_pc_2fcde
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2fd15:                               ; preds = %dec_label_pc_2fcde, %dec_label_pc_2fd15
  %indvars.iv4.reload = load i64, ptr %indvars.iv4.reg2mem, align 8
  %4 = mul i64 %indvars.iv4.reload, 4
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 4
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4.reload, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 10
  store i64 %indvars.iv.next5, ptr %indvars.iv4.reg2mem, align 8
  br i1 %exitcond6, label %dec_label_pc_2fd39, label %dec_label_pc_2fd15

dec_label_pc_2fd39:                               ; preds = %dec_label_pc_2fd15
  %7 = icmp slt i32 %data, 0
  br i1 %7, label %dec_label_pc_2fd8b, label %dec_label_pc_2fd3f

dec_label_pc_2fd3f:                               ; preds = %dec_label_pc_2fd39
  %8 = sext i32 %data to i64
  %9 = mul i64 %8, 4
  %10 = add i64 %9, %1
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_2fd62

dec_label_pc_2fd62:                               ; preds = %dec_label_pc_2fd62, %dec_label_pc_2fd3f
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %12 = mul i64 %indvars.iv.reload, 4
  %13 = add i64 %12, %1
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2fd9a, label %dec_label_pc_2fd62

dec_label_pc_2fd8b:                               ; preds = %dec_label_pc_2fd39
  call void @printLine(ptr @global_var_b5ca0)
  br label %dec_label_pc_2fd9a

dec_label_pc_2fd9a:                               ; preds = %dec_label_pc_2fd62, %dec_label_pc_2fd8b
  call void @free(ptr %0)
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

