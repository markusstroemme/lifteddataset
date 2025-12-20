@global_var_857de = external constant [10 x i8]
@global_var_857e8 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon2() local_unnamed_addr {
dec_label_pc_2d772:
  %stack_var_-68.03.reg2mem = alloca i32, align 4
  %stack_var_-68.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 0, ptr %stack_var_-68.03.reg2mem, align 4
  br i1 %2, label %dec_label_pc_2d869, label %dec_label_pc_2d7bc

dec_label_pc_2d7bc:                               ; preds = %dec_label_pc_2d772
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i32 @inet_addr(ptr @global_var_857de)
  %5 = call i16 @htons(i16 27015)
  %6 = bitcast ptr %stack_var_-56 to ptr
  %7 = call i32 @connect(i32 %1, ptr nonnull %6, i32 16)
  %8 = icmp eq i32 %7, -1
  store i32 0, ptr %stack_var_-68.0.ph.reg2mem, align 4
  br i1 %8, label %dec_label_pc_2d85f, label %dec_label_pc_2d813

dec_label_pc_2d813:                               ; preds = %dec_label_pc_2d7bc
  %9 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %10 = add i32 %9, 1
  %11 = icmp ult i32 %10, 2
  store i32 0, ptr %stack_var_-68.0.ph.reg2mem, align 4
  br i1 %11, label %dec_label_pc_2d85f, label %dec_label_pc_2d83a

dec_label_pc_2d83a:                               ; preds = %dec_label_pc_2d813
  %12 = ptrtoint ptr %stack_var_-8 to i64
  %13 = sext i32 %9 to i64
  %14 = add i64 %12, -22
  %15 = add i64 %14, %13
  %16 = inttoptr i64 %15 to ptr
  store i8 0, ptr %16, align 1
  %17 = bitcast ptr %stack_var_-30 to ptr
  %18 = call i32 @atoi(ptr nonnull %17)
  store i32 %18, ptr %stack_var_-68.0.ph.reg2mem, align 4
  br label %dec_label_pc_2d85f

dec_label_pc_2d85f:                               ; preds = %dec_label_pc_2d7bc, %dec_label_pc_2d83a, %dec_label_pc_2d813
  %stack_var_-68.0.ph.reload = load i32, ptr %stack_var_-68.0.ph.reg2mem, align 4
  %19 = call i32 @close(i32 %1)
  store i32 %stack_var_-68.0.ph.reload, ptr %stack_var_-68.03.reg2mem, align 4
  br label %dec_label_pc_2d869

dec_label_pc_2d869:                               ; preds = %dec_label_pc_2d772, %dec_label_pc_2d85f
  %stack_var_-68.03.reload = load i32, ptr %stack_var_-68.03.reg2mem, align 4
  call void @anon0(i32 %stack_var_-68.03.reload)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  br i1 %21, label %dec_label_pc_2d888, label %dec_label_pc_2d883

dec_label_pc_2d883:                               ; preds = %dec_label_pc_2d869
  call void @__stack_chk_fail()
  br label %dec_label_pc_2d888

dec_label_pc_2d888:                               ; preds = %dec_label_pc_2d883, %dec_label_pc_2d869
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_2d8e1:
  call void @anon1(i32 %data)
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_2d949:
  %0 = icmp eq i32 %data, 2147483647
  br i1 %0, label %dec_label_pc_2d977, label %dec_label_pc_2d961

dec_label_pc_2d961:                               ; preds = %dec_label_pc_2d949
  %1 = add i32 %data, 1
  call void @printIntLine(i32 %1)
  br label %dec_label_pc_2d986

dec_label_pc_2d977:                               ; preds = %dec_label_pc_2d949
  call void @printLine(ptr @global_var_857e8)
  br label %dec_label_pc_2d986

dec_label_pc_2d986:                               ; preds = %dec_label_pc_2d977, %dec_label_pc_2d961
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @recv(i32, ptr, i32, i32) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

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

