@global_var_8c32c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_39aa3:
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
  br i1 %5, label %dec_label_pc_39bdd, label %dec_label_pc_39af4

dec_label_pc_39af4:                               ; preds = %dec_label_pc_39aa3
  %6 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %7 = call i16 @htons(i16 27015)
  %8 = bitcast ptr %stack_var_-56 to ptr
  %9 = call i32 @bind(i32 %4, ptr nonnull %8, i32 16)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %dec_label_pc_39bcd.thread8, label %dec_label_pc_39b40

dec_label_pc_39b40:                               ; preds = %dec_label_pc_39af4
  %11 = call i32 @listen(i32 %4, i32 5)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %dec_label_pc_39bcd.thread8, label %dec_label_pc_39b54

dec_label_pc_39b54:                               ; preds = %dec_label_pc_39b40
  %13 = call i32 @accept(i32 %4, ptr null, ptr null)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %dec_label_pc_39bcd.thread8, label %dec_label_pc_39b71

dec_label_pc_39b71:                               ; preds = %dec_label_pc_39b54
  %15 = call i32 @recv(i32 %13, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %16 = add i32 %15, 1
  %17 = icmp ult i32 %16, 2
  br i1 %17, label %dec_label_pc_39bcd, label %dec_label_pc_39bbd

dec_label_pc_39bbd:                               ; preds = %dec_label_pc_39b71
  %18 = ptrtoint ptr %stack_var_-8 to i64
  %19 = sext i32 %15 to i64
  %20 = add i64 %18, -22
  %21 = add i64 %20, %19
  %22 = inttoptr i64 %21 to ptr
  store i8 0, ptr %22, align 1
  %23 = bitcast ptr %stack_var_-30 to ptr
  %24 = call i32 @atoi(ptr nonnull %23)
  %.pr.pre = load i32, ptr %3, align 4
  %25 = icmp eq i32 %.pr.pre, -1
  br i1 %25, label %dec_label_pc_39bd3, label %dec_label_pc_39bcd.thread7

dec_label_pc_39bcd.thread7:                       ; preds = %dec_label_pc_39bbd
  %26 = call i32 @close(i32 %.pr.pre)
  br label %dec_label_pc_39bd3

dec_label_pc_39bcd.thread8:                       ; preds = %dec_label_pc_39af4, %dec_label_pc_39b40, %dec_label_pc_39b54
  %27 = call i32 @close(i32 %4)
  br label %dec_label_pc_39bdd

dec_label_pc_39bcd:                               ; preds = %dec_label_pc_39b71
  %28 = call i32 @close(i32 %4)
  br label %dec_label_pc_39bd3

dec_label_pc_39bd3:                               ; preds = %dec_label_pc_39bbd, %dec_label_pc_39bcd, %dec_label_pc_39bcd.thread7
  %29 = call i32 @close(i32 %13)
  br label %dec_label_pc_39bdd

dec_label_pc_39bdd:                               ; preds = %dec_label_pc_39bcd.thread8, %dec_label_pc_39aa3, %dec_label_pc_39bd3
  %30 = bitcast ptr %stack_var_-56 to ptr
  call void @anon1(ptr nonnull %30)
  %31 = call i64 @__readfsqword(i64 40)
  %32 = icmp eq i64 %0, %31
  br i1 %32, label %dec_label_pc_39c04, label %dec_label_pc_39bff

dec_label_pc_39bff:                               ; preds = %dec_label_pc_39bdd
  call void @__stack_chk_fail()
  br label %dec_label_pc_39c04

dec_label_pc_39c04:                               ; preds = %dec_label_pc_39bff, %dec_label_pc_39bdd
  ret void
}

define void @anon1(ptr %dataArray) local_unnamed_addr {
dec_label_pc_39dda:
  %0 = ptrtoint ptr %dataArray to i64
  %sext = mul i64 %0, 4294967296
  %1 = ashr exact i64 %sext, 32
  %2 = add nsw i64 %1, 8
  %3 = inttoptr i64 %2 to ptr
  %4 = load i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 1
  br i1 %5, label %dec_label_pc_39e0c, label %dec_label_pc_39dfa

dec_label_pc_39dfa:                               ; preds = %dec_label_pc_39dda
  %6 = mul i32 %4, 2
  call void @printIntLine(i32 %6)
  br label %dec_label_pc_39e0c

dec_label_pc_39e0c:                               ; preds = %dec_label_pc_39dfa, %dec_label_pc_39dda
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
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

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

