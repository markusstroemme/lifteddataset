@global_var_8ec90 = external constant [10 x i8]
@global_var_8ec9a = external constant [21 x i8]
@global_var_8ecb0 = external constant [54 x i8]
@global_var_9543c = external constant [4 x i8]
@global_var_c3074 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3f5b4:
  %stack_var_-72.1.reg2mem = alloca i32, align 4
  %.reg2mem = alloca i32, align 4
  %stack_var_-72.1.ph.reg2mem = alloca i32, align 4
  %stack_var_-72.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @global_var_c3074, align 4
  %2 = icmp eq i32 %1, 5
  %3 = icmp eq i1 %2, false
  store i32 %1, ptr %.reg2mem, align 4
  store i32 0, ptr %stack_var_-72.1.reg2mem, align 4
  br i1 %3, label %dec_label_pc_3f6ba, label %dec_label_pc_3f5e5

dec_label_pc_3f5e5:                               ; preds = %dec_label_pc_3f5b4
  %4 = call i32 @socket(i32 2, i32 1, i32 6)
  %5 = icmp eq i32 %4, -1
  store i32 0, ptr %stack_var_-72.1.ph.reg2mem, align 4
  br i1 %5, label %dec_label_pc_3f6bathread-pre-split, label %dec_label_pc_3f60d

dec_label_pc_3f60d:                               ; preds = %dec_label_pc_3f5e5
  %6 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %7 = call i32 @inet_addr(ptr @global_var_8ec90)
  %8 = call i16 @htons(i16 27015)
  %9 = bitcast ptr %stack_var_-56 to ptr
  %10 = call i32 @connect(i32 %4, ptr nonnull %9, i32 16)
  %11 = icmp eq i32 %10, -1
  store i32 0, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br i1 %11, label %dec_label_pc_3f6b0, label %dec_label_pc_3f664

dec_label_pc_3f664:                               ; preds = %dec_label_pc_3f60d
  %12 = call i32 @recv(i32 %4, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i32 0, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br i1 %14, label %dec_label_pc_3f6b0, label %dec_label_pc_3f68b

dec_label_pc_3f68b:                               ; preds = %dec_label_pc_3f664
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = sext i32 %12 to i64
  %17 = add i64 %15, -22
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  %20 = bitcast ptr %stack_var_-30 to ptr
  %21 = call i32 @atoi(ptr nonnull %20)
  store i32 %21, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br label %dec_label_pc_3f6b0

dec_label_pc_3f6b0:                               ; preds = %dec_label_pc_3f60d, %dec_label_pc_3f68b, %dec_label_pc_3f664
  %stack_var_-72.0.ph.reload = load i32, ptr %stack_var_-72.0.ph.reg2mem, align 4
  %22 = call i32 @close(i32 %4)
  store i32 %stack_var_-72.0.ph.reload, ptr %stack_var_-72.1.ph.reg2mem, align 4
  br label %dec_label_pc_3f6bathread-pre-split

dec_label_pc_3f6bathread-pre-split:               ; preds = %dec_label_pc_3f6b0, %dec_label_pc_3f5e5
  %stack_var_-72.1.ph.reload = load i32, ptr %stack_var_-72.1.ph.reg2mem, align 4
  %.pr = load i32, ptr @global_var_c3074, align 4
  store i32 %.pr, ptr %.reg2mem, align 4
  store i32 %stack_var_-72.1.ph.reload, ptr %stack_var_-72.1.reg2mem, align 4
  br label %dec_label_pc_3f6ba

dec_label_pc_3f6ba:                               ; preds = %dec_label_pc_3f6bathread-pre-split, %dec_label_pc_3f5b4
  %.reload = load i32, ptr %.reg2mem, align 4
  %23 = icmp eq i32 %.reload, 5
  br i1 %23, label %dec_label_pc_3f6d6, label %dec_label_pc_3f6c5

dec_label_pc_3f6c5:                               ; preds = %dec_label_pc_3f6ba
  call void @printLine(ptr @global_var_8ec9a)
  br label %dec_label_pc_3f708

dec_label_pc_3f6d6:                               ; preds = %dec_label_pc_3f6ba
  %stack_var_-72.1.reload = load i32, ptr %stack_var_-72.1.reg2mem, align 4
  %24 = icmp slt i32 %stack_var_-72.1.reload, 1
  br i1 %24, label %dec_label_pc_3f708, label %dec_label_pc_3f6dc

dec_label_pc_3f6dc:                               ; preds = %dec_label_pc_3f6d6
  %25 = icmp sgt i32 %stack_var_-72.1.reload, 1073741822
  br i1 %25, label %dec_label_pc_3f6f9, label %dec_label_pc_3f6e5

dec_label_pc_3f6e5:                               ; preds = %dec_label_pc_3f6dc
  %26 = mul i32 %stack_var_-72.1.reload, 2
  call void @printIntLine(i32 %26)
  br label %dec_label_pc_3f708

dec_label_pc_3f6f9:                               ; preds = %dec_label_pc_3f6dc
  call void @printLine(ptr @global_var_8ecb0)
  br label %dec_label_pc_3f708

dec_label_pc_3f708:                               ; preds = %dec_label_pc_3f6f9, %dec_label_pc_3f6e5, %dec_label_pc_3f6d6, %dec_label_pc_3f6c5
  %27 = call i64 @__readfsqword(i64 40)
  %28 = icmp eq i64 %0, %27
  br i1 %28, label %dec_label_pc_3f71d, label %dec_label_pc_3f718

dec_label_pc_3f718:                               ; preds = %dec_label_pc_3f708
  call void @__stack_chk_fail()
  br label %dec_label_pc_3f71d

dec_label_pc_3f71d:                               ; preds = %dec_label_pc_3f718, %dec_label_pc_3f708
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_7758b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_775ae, label %dec_label_pc_775a2

dec_label_pc_775a2:                               ; preds = %dec_label_pc_7758b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_775ae

dec_label_pc_775ae:                               ; preds = %dec_label_pc_775a2, %dec_label_pc_7758b
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_775e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_9543c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i16 @htons(i16) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

