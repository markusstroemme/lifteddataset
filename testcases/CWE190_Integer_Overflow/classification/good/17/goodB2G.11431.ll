@global_var_87518 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3fb9a:
  %stack_var_-76.04713.reg2mem = alloca i32, align 4
  %stack_var_-76.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 0, ptr %stack_var_-76.04713.reg2mem, align 4
  br i1 %2, label %dec_label_pc_3fcd2, label %dec_label_pc_3fbc9

dec_label_pc_3fbc9:                               ; preds = %dec_label_pc_3fb9a
  %3 = bitcast ptr %stack_var_-56 to ptr
  %4 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %5 = call i16 @htons(i16 27015)
  %6 = call i32 @bind(i32 %1, ptr nonnull %3, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_3fca2.thread8, label %dec_label_pc_3fc15

dec_label_pc_3fc15:                               ; preds = %dec_label_pc_3fbc9
  %8 = call i32 @listen(i32 %1, i32 5)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_3fca2.thread8, label %dec_label_pc_3fc29

dec_label_pc_3fc29:                               ; preds = %dec_label_pc_3fc15
  %10 = call i32 @accept(i32 %1, ptr null, ptr null)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_3fca2.thread8, label %dec_label_pc_3fc46

dec_label_pc_3fc46:                               ; preds = %dec_label_pc_3fc29
  %12 = call i32 @recv(i32 %10, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i32 0, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br i1 %14, label %dec_label_pc_3fcc9, label %dec_label_pc_3fc6d

dec_label_pc_3fc6d:                               ; preds = %dec_label_pc_3fc46
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = add i64 %15, -22
  %17 = bitcast ptr %stack_var_-30 to ptr
  %18 = sext i32 %12 to i64
  %19 = add i64 %16, %18
  %20 = inttoptr i64 %19 to ptr
  store i8 0, ptr %20, align 1
  %21 = call i32 @atoi(ptr nonnull %17)
  store i32 %21, ptr %stack_var_-76.0.ph.reg2mem, align 4
  br label %dec_label_pc_3fcc9

dec_label_pc_3fca2.thread8:                       ; preds = %dec_label_pc_3fc29, %dec_label_pc_3fc15, %dec_label_pc_3fbc9
  %22 = call i32 @close(i32 %1)
  store i32 0, ptr %stack_var_-76.04713.reg2mem, align 4
  br label %dec_label_pc_3fcd2

dec_label_pc_3fcc9:                               ; preds = %dec_label_pc_3fc46, %dec_label_pc_3fc6d
  %stack_var_-76.0.ph.reload = load i32, ptr %stack_var_-76.0.ph.reg2mem, align 4
  %23 = call i32 @close(i32 %1)
  %24 = call i32 @close(i32 %10)
  %25 = icmp eq i32 %stack_var_-76.0.ph.reload, 2147483647
  store i32 %stack_var_-76.0.ph.reload, ptr %stack_var_-76.04713.reg2mem, align 4
  br i1 %25, label %dec_label_pc_3fce8, label %dec_label_pc_3fcd2

dec_label_pc_3fcd2:                               ; preds = %dec_label_pc_3fb9a, %dec_label_pc_3fca2.thread8, %dec_label_pc_3fcc9
  %stack_var_-76.04713.reload = load i32, ptr %stack_var_-76.04713.reg2mem, align 4
  %26 = add i32 %stack_var_-76.04713.reload, 1
  call void @printIntLine(i32 %26)
  br label %dec_label_pc_3fd01

dec_label_pc_3fce8:                               ; preds = %dec_label_pc_3fcc9
  call void @printLine(ptr @global_var_87518)
  br label %dec_label_pc_3fd01

dec_label_pc_3fd01:                               ; preds = %dec_label_pc_3fcd2, %dec_label_pc_3fce8
  %27 = call i64 @__readfsqword(i64 40)
  %28 = icmp eq i64 %0, %27
  br i1 %28, label %dec_label_pc_3fd16, label %dec_label_pc_3fd11

dec_label_pc_3fd11:                               ; preds = %dec_label_pc_3fd01
  call void @__stack_chk_fail()
  br label %dec_label_pc_3fd16

dec_label_pc_3fd16:                               ; preds = %dec_label_pc_3fd11, %dec_label_pc_3fd01
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

declare i32 @listen(i32, i32) local_unnamed_addr

declare i32 @bind(i32, ptr, i32) local_unnamed_addr

declare i32 @accept(i32, ptr, ptr) local_unnamed_addr

declare i32 @atoi(ptr) local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

