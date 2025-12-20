@global_var_85c06 = external constant [10 x i8]
@global_var_8ca7c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_2ee0e:
  %.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %dataArray_-64 = alloca [5 x i32], align 4
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = insertvalue [5 x i32] undef, i32 %1, 0
  store [5 x i32] %2, ptr %dataArray_-64, align 4
  %3 = getelementptr inbounds [5 x i32], ptr %dataArray_-64, i64 0, i64 0
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %dec_label_pc_2ef05, label %dec_label_pc_2ee58

dec_label_pc_2ee58:                               ; preds = %dec_label_pc_2ee0e
  %6 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %7 = call i32 @inet_addr(ptr @global_var_85c06)
  %8 = call i16 @htons(i16 27015)
  %9 = bitcast ptr %stack_var_-56 to ptr
  %10 = call i32 @connect(i32 %4, ptr nonnull %9, i32 16)
  %11 = icmp eq i32 %10, -1
  store i32 %4, ptr %.reg2mem, align 4
  br i1 %11, label %dec_label_pc_2eefb, label %dec_label_pc_2eeaf

dec_label_pc_2eeaf:                               ; preds = %dec_label_pc_2ee58
  %12 = call i32 @recv(i32 %4, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i32 %4, ptr %.reg2mem, align 4
  br i1 %14, label %dec_label_pc_2eefb, label %dec_label_pc_2eef5

dec_label_pc_2eef5:                               ; preds = %dec_label_pc_2eeaf
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = sext i32 %12 to i64
  %17 = add i64 %15, -22
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  %20 = bitcast ptr %stack_var_-30 to ptr
  %21 = call i32 @atoi(ptr nonnull %20)
  %.pr = load i32, ptr %3, align 4
  %22 = icmp eq i32 %.pr, -1
  store i32 %.pr, ptr %.reg2mem, align 4
  br i1 %22, label %dec_label_pc_2ef05, label %dec_label_pc_2eefb

dec_label_pc_2eefb:                               ; preds = %dec_label_pc_2eeaf, %dec_label_pc_2ee58, %dec_label_pc_2eef5
  %.reload = load i32, ptr %.reg2mem, align 4
  %23 = call i32 @close(i32 %.reload)
  br label %dec_label_pc_2ef05

dec_label_pc_2ef05:                               ; preds = %dec_label_pc_2ee0e, %dec_label_pc_2eefb, %dec_label_pc_2eef5
  %24 = bitcast ptr %stack_var_-56 to ptr
  call void @anon1(ptr nonnull %24)
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %0, %25
  br i1 %26, label %dec_label_pc_2ef2c, label %dec_label_pc_2ef27

dec_label_pc_2ef27:                               ; preds = %dec_label_pc_2ef05
  call void @__stack_chk_fail()
  br label %dec_label_pc_2ef2c

dec_label_pc_2ef2c:                               ; preds = %dec_label_pc_2ef27, %dec_label_pc_2ef05
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_2f0bf:
  %0 = ptrtoint ptr %dataArray to i64
  %sext = mul i64 %0, 4294967296
  %1 = ashr exact i64 %sext, 32
  %2 = add nsw i64 %1, 8
  %3 = inttoptr i64 %2 to ptr
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 1
  call void @printIntLine(i32 %5)
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8ca7c, i64 %0)
  ret void
}

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i16 @htons(i16) local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i32 @inet_addr(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @connect(i32, ptr, i32) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

