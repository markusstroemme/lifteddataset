@global_var_b5860 = external constant [16 x i8]
@global_var_b5870 = external constant [21 x i8]
@global_var_b5888 = external constant [36 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_ec080 = external local_unnamed_addr global ptr
@global_var_ec164 = external local_unnamed_addr global i32

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_2c8ce:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv5.reg2mem = alloca i64, align 8
  %0 = load i32, ptr @global_var_ec164, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_2c8fb, label %dec_label_pc_2c8e7

dec_label_pc_2c8e7:                               ; preds = %dec_label_pc_2c8ce
  call void @printLine(ptr @global_var_b5870)
  br label %dec_label_pc_2c9ba

dec_label_pc_2c8fb:                               ; preds = %dec_label_pc_2c8ce
  %2 = call ptr @malloc(i32 40)
  %3 = ptrtoint ptr %2 to i64
  %4 = icmp eq ptr %2, null
  %5 = icmp eq i1 %4, false
  store i64 0, ptr %indvars.iv5.reg2mem, align 8
  br i1 %5, label %dec_label_pc_2c923, label %dec_label_pc_2c910

dec_label_pc_2c910:                               ; preds = %dec_label_pc_2c8fb
  call void @exit(i32 -1)
  unreachable

dec_label_pc_2c923:                               ; preds = %dec_label_pc_2c8fb, %dec_label_pc_2c923
  %indvars.iv5.reload = load i64, ptr %indvars.iv5.reg2mem, align 8
  %6 = mul i64 %indvars.iv5.reload, 4
  %7 = add i64 %6, %3
  %8 = inttoptr i64 %7 to ptr
  store i32 0, ptr %8, align 4
  %indvars.iv.next6 = add nuw nsw i64 %indvars.iv5.reload, 1
  %exitcond7 = icmp eq i64 %indvars.iv.next6, 10
  store i64 %indvars.iv.next6, ptr %indvars.iv5.reg2mem, align 8
  br i1 %exitcond7, label %dec_label_pc_2c947, label %dec_label_pc_2c923

dec_label_pc_2c947:                               ; preds = %dec_label_pc_2c923
  %9 = icmp ugt i32 %data, 9
  br i1 %9, label %dec_label_pc_2c99f, label %dec_label_pc_2c953

dec_label_pc_2c953:                               ; preds = %dec_label_pc_2c947
  %10 = sext i32 %data to i64
  %11 = mul i64 %10, 4
  %12 = add i64 %11, %3
  %13 = inttoptr i64 %12 to ptr
  store i32 1, ptr %13, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_2c976

dec_label_pc_2c976:                               ; preds = %dec_label_pc_2c976, %dec_label_pc_2c953
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %14 = mul i64 %indvars.iv.reload, 4
  %15 = add i64 %14, %3
  %16 = inttoptr i64 %15 to ptr
  %17 = load i32, ptr %16, align 4
  call void @printIntLine(i32 %17)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_2c9ae, label %dec_label_pc_2c976

dec_label_pc_2c99f:                               ; preds = %dec_label_pc_2c947
  call void @printLine(ptr @global_var_b5888)
  br label %dec_label_pc_2c9ae

dec_label_pc_2c9ae:                               ; preds = %dec_label_pc_2c976, %dec_label_pc_2c99f
  call void @free(ptr %2)
  br label %dec_label_pc_2c9ba

dec_label_pc_2c9ba:                               ; preds = %dec_label_pc_2c9ae, %dec_label_pc_2c8e7
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_2c9bd:
  %stack_var_-36.0.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-30, align 8
  %1 = load ptr, ptr @global_var_ec080, align 8
  %2 = bitcast ptr %stack_var_-30 to ptr
  %3 = call ptr @fgets(ptr nonnull %2, i32 14, ptr %1)
  %4 = icmp eq ptr %3, null
  br i1 %4, label %dec_label_pc_2ca22, label %dec_label_pc_2ca11

dec_label_pc_2ca11:                               ; preds = %dec_label_pc_2c9bd
  %5 = call i32 @atoi(ptr nonnull %2)
  store i32 %5, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_2ca31

dec_label_pc_2ca22:                               ; preds = %dec_label_pc_2c9bd
  call void @printLine(ptr @global_var_b5860)
  store i32 -1, ptr %stack_var_-36.0.reg2mem, align 4
  br label %dec_label_pc_2ca31

dec_label_pc_2ca31:                               ; preds = %dec_label_pc_2ca22, %dec_label_pc_2ca11
  %stack_var_-36.0.reload = load i32, ptr %stack_var_-36.0.reg2mem, align 4
  store i32 0, ptr @global_var_ec164, align 4
  call void @anon0(i32 %stack_var_-36.0.reload)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_2ca5a, label %dec_label_pc_2ca55

dec_label_pc_2ca55:                               ; preds = %dec_label_pc_2ca31
  call void @__stack_chk_fail()
  br label %dec_label_pc_2ca5a

dec_label_pc_2ca5a:                               ; preds = %dec_label_pc_2ca55, %dec_label_pc_2ca31
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

