@global_var_b8328 = external constant [32 x i8]
@global_var_bd318 = external constant [4 x i8]
@global_var_6987 = external constant i16

define void @anon0() local_unnamed_addr {
dec_label_pc_54f92:
  %stack_var_-72.036.reg2mem = alloca i64, align 8
  %stack_var_-72.0.ph.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i64 4294967295, ptr %stack_var_-72.036.reg2mem, align 8
  br i1 %2, label %dec_label_pc_550cc, label %dec_label_pc_54fe3

dec_label_pc_54fe3:                               ; preds = %dec_label_pc_54f92
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 ptrtoint (ptr @global_var_6987 to i16))
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_550bc.thread7, label %dec_label_pc_5502f

dec_label_pc_5502f:                               ; preds = %dec_label_pc_54fe3
  %8 = call i32 @listen(i32 %1, i32 5)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_550bc.thread7, label %dec_label_pc_55043

dec_label_pc_55043:                               ; preds = %dec_label_pc_5502f
  %10 = call i32 @accept(i32 %1, ptr null, ptr null)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_550bc.thread7, label %dec_label_pc_55060

dec_label_pc_55060:                               ; preds = %dec_label_pc_55043
  %12 = call i32 @recv(i32 %10, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i64 4294967295, ptr %stack_var_-72.0.ph.reg2mem, align 8
  br i1 %14, label %dec_label_pc_550c2, label %dec_label_pc_55087

dec_label_pc_55087:                               ; preds = %dec_label_pc_55060
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = sext i32 %12 to i64
  %17 = add i64 %15, -22
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  %20 = bitcast ptr %stack_var_-30 to ptr
  %21 = call i32 @atoi(ptr nonnull %20)
  %phitmp = zext i32 %21 to i64
  store i64 %phitmp, ptr %stack_var_-72.0.ph.reg2mem, align 8
  br label %dec_label_pc_550c2

dec_label_pc_550bc.thread7:                       ; preds = %dec_label_pc_55043, %dec_label_pc_5502f, %dec_label_pc_54fe3
  %22 = call i32 @close(i32 %1)
  store i64 4294967295, ptr %stack_var_-72.036.reg2mem, align 8
  br label %dec_label_pc_550cc

dec_label_pc_550c2:                               ; preds = %dec_label_pc_55087, %dec_label_pc_55060
  %stack_var_-72.0.ph.reload = load i64, ptr %stack_var_-72.0.ph.reg2mem, align 8
  %23 = call i32 @close(i32 %1)
  %24 = call i32 @close(i32 %10)
  store i64 %stack_var_-72.0.ph.reload, ptr %stack_var_-72.036.reg2mem, align 8
  br label %dec_label_pc_550cc

dec_label_pc_550cc:                               ; preds = %dec_label_pc_54f92, %dec_label_pc_550bc.thread7, %dec_label_pc_550c2
  %stack_var_-72.036.reload = load i64, ptr %stack_var_-72.036.reg2mem, align 8
  call void @anon1(i64 %stack_var_-72.036.reload)
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %0, %25
  br i1 %26, label %dec_label_pc_550f1, label %dec_label_pc_550ec

dec_label_pc_550ec:                               ; preds = %dec_label_pc_550cc
  call void @__stack_chk_fail()
  br label %dec_label_pc_550f1

dec_label_pc_550f1:                               ; preds = %dec_label_pc_550ec, %dec_label_pc_550cc
  ret void
}

define void @anon1(i64 %myStruct) local_unnamed_addr {
dec_label_pc_552a0:
  %indvars.iv.reg2mem = alloca i64, align 8
  %indvars.iv6.reg2mem = alloca i64, align 8
  %sext = mul i64 %myStruct, 4294967296
  %0 = call ptr @malloc(i32 40)
  %1 = ptrtoint ptr %0 to i64
  %2 = icmp eq ptr %0, null
  %3 = icmp eq i1 %2, false
  store i64 0, ptr %indvars.iv6.reg2mem, align 8
  br i1 %3, label %dec_label_pc_552dd, label %dec_label_pc_552ca

dec_label_pc_552ca:                               ; preds = %dec_label_pc_552a0
  call void @exit(i32 -1)
  unreachable

dec_label_pc_552dd:                               ; preds = %dec_label_pc_552a0, %dec_label_pc_552dd
  %indvars.iv6.reload = load i64, ptr %indvars.iv6.reg2mem, align 8
  %4 = mul i64 %indvars.iv6.reload, 4
  %5 = add i64 %4, %1
  %6 = inttoptr i64 %5 to ptr
  store i32 0, ptr %6, align 4
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6.reload, 1
  %exitcond8 = icmp eq i64 %indvars.iv.next7, 10
  store i64 %indvars.iv.next7, ptr %indvars.iv6.reg2mem, align 8
  br i1 %exitcond8, label %dec_label_pc_55301, label %dec_label_pc_552dd

dec_label_pc_55301:                               ; preds = %dec_label_pc_552dd
  %7 = trunc i64 %myStruct to i32
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %dec_label_pc_55353, label %dec_label_pc_55307

dec_label_pc_55307:                               ; preds = %dec_label_pc_55301
  %9 = ashr exact i64 %sext, 30
  %10 = add i64 %9, %1
  %11 = inttoptr i64 %10 to ptr
  store i32 1, ptr %11, align 4
  store i64 0, ptr %indvars.iv.reg2mem, align 8
  br label %dec_label_pc_5532a

dec_label_pc_5532a:                               ; preds = %dec_label_pc_5532a, %dec_label_pc_55307
  %indvars.iv.reload = load i64, ptr %indvars.iv.reg2mem, align 8
  %12 = mul i64 %indvars.iv.reload, 4
  %13 = add i64 %12, %1
  %14 = inttoptr i64 %13 to ptr
  %15 = load i32, ptr %14, align 4
  call void @printIntLine(i32 %15)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.reload, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 10
  store i64 %indvars.iv.next, ptr %indvars.iv.reg2mem, align 8
  br i1 %exitcond, label %dec_label_pc_55362, label %dec_label_pc_5532a

dec_label_pc_55353:                               ; preds = %dec_label_pc_55301
  call void @printLine(ptr @global_var_b8328)
  br label %dec_label_pc_55362

dec_label_pc_55362:                               ; preds = %dec_label_pc_5532a, %dec_label_pc_55353
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

declare i16 @htons(i16) local_unnamed_addr

declare i32 @bind(i32, ptr, i32) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @accept(i32, ptr, ptr) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @listen(i32, i32) local_unnamed_addr

declare void @free(ptr) local_unnamed_addr

declare void @exit(i32) local_unnamed_addr

declare ptr @malloc(i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

