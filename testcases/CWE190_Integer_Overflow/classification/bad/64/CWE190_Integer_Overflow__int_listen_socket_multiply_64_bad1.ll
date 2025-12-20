@global_var_8c32c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_392f8:
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %dec_label_pc_39432, label %dec_label_pc_39349

dec_label_pc_39349:                               ; preds = %dec_label_pc_392f8
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_39422.thread4, label %dec_label_pc_39395

dec_label_pc_39395:                               ; preds = %dec_label_pc_39349
  %8 = call i32 @listen(i32 %1, i32 5)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_39422.thread4, label %dec_label_pc_393a9

dec_label_pc_393a9:                               ; preds = %dec_label_pc_39395
  %10 = call i32 @accept(i32 %1, ptr null, ptr null)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_39422.thread4, label %dec_label_pc_393c6

dec_label_pc_393c6:                               ; preds = %dec_label_pc_393a9
  %12 = call i32 @recv(i32 %10, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %dec_label_pc_39428, label %dec_label_pc_393ed

dec_label_pc_393ed:                               ; preds = %dec_label_pc_393c6
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = sext i32 %12 to i64
  %17 = add i64 %15, -22
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  %20 = bitcast ptr %stack_var_-30 to ptr
  %21 = call i32 @atoi(ptr nonnull %20)
  %22 = sext i32 %21 to i64
  store i64 %22, ptr %stack_var_-72, align 8
  br label %dec_label_pc_39428

dec_label_pc_39422.thread4:                       ; preds = %dec_label_pc_393a9, %dec_label_pc_39395, %dec_label_pc_39349
  %23 = call i32 @close(i32 %1)
  br label %dec_label_pc_39432

dec_label_pc_39428:                               ; preds = %dec_label_pc_393ed, %dec_label_pc_393c6
  %24 = call i32 @close(i32 %1)
  %25 = call i32 @close(i32 %10)
  br label %dec_label_pc_39432

dec_label_pc_39432:                               ; preds = %dec_label_pc_392f8, %dec_label_pc_39422.thread4, %dec_label_pc_39428
  %26 = bitcast ptr %stack_var_-72 to ptr
  call void @anon1(ptr nonnull %26)
  %27 = call i64 @__readfsqword(i64 40)
  %28 = icmp eq i64 %0, %27
  br i1 %28, label %dec_label_pc_39453, label %dec_label_pc_3944e

dec_label_pc_3944e:                               ; preds = %dec_label_pc_39432
  call void @__stack_chk_fail()
  br label %dec_label_pc_39453

dec_label_pc_39453:                               ; preds = %dec_label_pc_3944e, %dec_label_pc_39432
  ret void
}

define void @anon1(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_3961d:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp slt i32 %2, 1
  br i1 %3, label %dec_label_pc_39656, label %dec_label_pc_39644

dec_label_pc_39644:                               ; preds = %dec_label_pc_3961d
  %4 = mul i32 %2, 2
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_39656

dec_label_pc_39656:                               ; preds = %dec_label_pc_39644, %dec_label_pc_3961d
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

