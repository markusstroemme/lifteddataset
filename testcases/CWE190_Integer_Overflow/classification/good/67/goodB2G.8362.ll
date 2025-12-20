@global_var_859e6 = external constant [10 x i8]
@global_var_859f0 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_2f2b7:
  %stack_var_-68.04.reg2mem = alloca i64, align 8
  %stack_var_-68.0.ph.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i64 0, ptr %stack_var_-68.04.reg2mem, align 8
  br i1 %2, label %dec_label_pc_2f3ae, label %dec_label_pc_2f301

dec_label_pc_2f301:                               ; preds = %dec_label_pc_2f2b7
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i32 @inet_addr(ptr @global_var_859e6)
  %5 = call i16 @htons(i16 27015)
  %6 = bitcast ptr %stack_var_-56 to ptr
  %7 = call i32 @connect(i32 %1, ptr nonnull %6, i32 16)
  %8 = icmp eq i32 %7, -1
  store i64 0, ptr %stack_var_-68.0.ph.reg2mem, align 8
  br i1 %8, label %dec_label_pc_2f3a4, label %dec_label_pc_2f358

dec_label_pc_2f358:                               ; preds = %dec_label_pc_2f301
  %9 = call i32 @recv(i32 %1, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %10 = add i32 %9, 1
  %11 = icmp ult i32 %10, 2
  store i64 0, ptr %stack_var_-68.0.ph.reg2mem, align 8
  br i1 %11, label %dec_label_pc_2f3a4, label %dec_label_pc_2f37f

dec_label_pc_2f37f:                               ; preds = %dec_label_pc_2f358
  %12 = ptrtoint ptr %stack_var_-8 to i64
  %13 = sext i32 %9 to i64
  %14 = add i64 %12, -22
  %15 = add i64 %14, %13
  %16 = inttoptr i64 %15 to ptr
  store i8 0, ptr %16, align 1
  %17 = bitcast ptr %stack_var_-30 to ptr
  %18 = call i32 @atoi(ptr nonnull %17)
  %phitmp = zext i32 %18 to i64
  store i64 %phitmp, ptr %stack_var_-68.0.ph.reg2mem, align 8
  br label %dec_label_pc_2f3a4

dec_label_pc_2f3a4:                               ; preds = %dec_label_pc_2f301, %dec_label_pc_2f37f, %dec_label_pc_2f358
  %stack_var_-68.0.ph.reload = load i64, ptr %stack_var_-68.0.ph.reg2mem, align 8
  %19 = call i32 @close(i32 %1)
  store i64 %stack_var_-68.0.ph.reload, ptr %stack_var_-68.04.reg2mem, align 8
  br label %dec_label_pc_2f3ae

dec_label_pc_2f3ae:                               ; preds = %dec_label_pc_2f2b7, %dec_label_pc_2f3a4
  %stack_var_-68.04.reload = load i64, ptr %stack_var_-68.04.reg2mem, align 8
  call void @anon0(i64 %stack_var_-68.04.reload)
  %20 = call i64 @__readfsqword(i64 40)
  %21 = icmp eq i64 %0, %20
  br i1 %21, label %dec_label_pc_2f3d3, label %dec_label_pc_2f3ce

dec_label_pc_2f3ce:                               ; preds = %dec_label_pc_2f3ae
  call void @__stack_chk_fail()
  br label %dec_label_pc_2f3d3

dec_label_pc_2f3d3:                               ; preds = %dec_label_pc_2f3ce, %dec_label_pc_2f3ae
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_2f44c:
  %0 = trunc i64 %myStruct to i32
  %1 = icmp eq i32 %0, 2147483647
  br i1 %1, label %dec_label_pc_2f480, label %dec_label_pc_2f46a

dec_label_pc_2f46a:                               ; preds = %dec_label_pc_2f44c
  %2 = add i32 %0, 1
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_2f48f

dec_label_pc_2f480:                               ; preds = %dec_label_pc_2f44c
  call void @printLine(ptr @global_var_859f0)
  br label %dec_label_pc_2f48f

dec_label_pc_2f48f:                               ; preds = %dec_label_pc_2f480, %dec_label_pc_2f46a
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

