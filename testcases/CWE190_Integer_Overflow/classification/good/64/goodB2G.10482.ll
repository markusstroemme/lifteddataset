@global_var_860c0 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_43fe4:
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-72, align 8
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %dec_label_pc_4411e, label %dec_label_pc_44035

dec_label_pc_44035:                               ; preds = %dec_label_pc_43fe4
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_4410e.thread4, label %dec_label_pc_44081

dec_label_pc_44081:                               ; preds = %dec_label_pc_44035
  %8 = call i32 @listen(i32 %1, i32 5)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_4410e.thread4, label %dec_label_pc_44095

dec_label_pc_44095:                               ; preds = %dec_label_pc_44081
  %10 = call i32 @accept(i32 %1, ptr null, ptr null)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_4410e.thread4, label %dec_label_pc_440b2

dec_label_pc_440b2:                               ; preds = %dec_label_pc_44095
  %12 = call i32 @recv(i32 %10, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  br i1 %14, label %dec_label_pc_44114, label %dec_label_pc_440d9

dec_label_pc_440d9:                               ; preds = %dec_label_pc_440b2
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
  br label %dec_label_pc_44114

dec_label_pc_4410e.thread4:                       ; preds = %dec_label_pc_44095, %dec_label_pc_44081, %dec_label_pc_44035
  %23 = call i32 @close(i32 %1)
  br label %dec_label_pc_4411e

dec_label_pc_44114:                               ; preds = %dec_label_pc_440d9, %dec_label_pc_440b2
  %24 = call i32 @close(i32 %1)
  %25 = call i32 @close(i32 %10)
  br label %dec_label_pc_4411e

dec_label_pc_4411e:                               ; preds = %dec_label_pc_43fe4, %dec_label_pc_4410e.thread4, %dec_label_pc_44114
  %26 = bitcast ptr %stack_var_-72 to ptr
  call void @anon0(ptr nonnull %26)
  %27 = call i64 @__readfsqword(i64 40)
  %28 = icmp eq i64 %0, %27
  br i1 %28, label %dec_label_pc_4413f, label %dec_label_pc_4413a

dec_label_pc_4413a:                               ; preds = %dec_label_pc_4411e
  call void @__stack_chk_fail()
  br label %dec_label_pc_4413f

dec_label_pc_4413f:                               ; preds = %dec_label_pc_4413a, %dec_label_pc_4411e
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_441ce:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %.off = add i32 %2, 46339
  %3 = icmp ugt i32 %.off, 92678
  br i1 %3, label %dec_label_pc_4421f, label %dec_label_pc_4420a

dec_label_pc_4420a:                               ; preds = %dec_label_pc_441ce
  %4 = mul i32 %2, %2
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_4422f

dec_label_pc_4421f:                               ; preds = %dec_label_pc_441ce
  call void @printLine(ptr @global_var_860c0)
  br label %dec_label_pc_4422f

dec_label_pc_4422f:                               ; preds = %dec_label_pc_4421f, %dec_label_pc_4420a
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6e78b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6e7ae, label %dec_label_pc_6e7a2

dec_label_pc_6e7a2:                               ; preds = %dec_label_pc_6e78b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6e7ae

dec_label_pc_6e7ae:                               ; preds = %dec_label_pc_6e7a2, %dec_label_pc_6e78b
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

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @close(i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

