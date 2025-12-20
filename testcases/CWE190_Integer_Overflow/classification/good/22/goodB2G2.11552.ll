@CWE190_Integer_Overflow__int_listen_socket_preinc_22_goodB2G2Global = external local_unnamed_addr global i32
@global_var_875f0 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_40921:
  %stack_var_-72.047.reg2mem = alloca i32, align 4
  %stack_var_-72.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 0, ptr %stack_var_-72.047.reg2mem, align 4
  br i1 %2, label %dec_label_pc_40a5b, label %dec_label_pc_40972

dec_label_pc_40972:                               ; preds = %dec_label_pc_40921
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_40a4b.thread8, label %dec_label_pc_409be

dec_label_pc_409be:                               ; preds = %dec_label_pc_40972
  %8 = call i32 @listen(i32 %1, i32 5)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_40a4b.thread8, label %dec_label_pc_409d2

dec_label_pc_409d2:                               ; preds = %dec_label_pc_409be
  %10 = call i32 @accept(i32 %1, ptr null, ptr null)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_40a4b.thread8, label %dec_label_pc_409ef

dec_label_pc_409ef:                               ; preds = %dec_label_pc_409d2
  %12 = call i32 @recv(i32 %10, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i32 0, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br i1 %14, label %dec_label_pc_40a51, label %dec_label_pc_40a16

dec_label_pc_40a16:                               ; preds = %dec_label_pc_409ef
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = sext i32 %12 to i64
  %17 = add i64 %15, -22
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  %20 = bitcast ptr %stack_var_-30 to ptr
  %21 = call i32 @atoi(ptr nonnull %20)
  store i32 %21, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br label %dec_label_pc_40a51

dec_label_pc_40a4b.thread8:                       ; preds = %dec_label_pc_409d2, %dec_label_pc_409be, %dec_label_pc_40972
  %22 = call i32 @close(i32 %1)
  store i32 0, ptr %stack_var_-72.047.reg2mem, align 4
  br label %dec_label_pc_40a5b

dec_label_pc_40a51:                               ; preds = %dec_label_pc_40a16, %dec_label_pc_409ef
  %stack_var_-72.0.ph.reload = load i32, ptr %stack_var_-72.0.ph.reg2mem, align 4
  %23 = call i32 @close(i32 %1)
  %24 = call i32 @close(i32 %10)
  store i32 %stack_var_-72.0.ph.reload, ptr %stack_var_-72.047.reg2mem, align 4
  br label %dec_label_pc_40a5b

dec_label_pc_40a5b:                               ; preds = %dec_label_pc_40921, %dec_label_pc_40a4b.thread8, %dec_label_pc_40a51
  %stack_var_-72.047.reload = load i32, ptr %stack_var_-72.047.reg2mem, align 4
  store i32 1, ptr @CWE190_Integer_Overflow__int_listen_socket_preinc_22_goodB2G2Global, align 4
  call void @anon0(i32 %stack_var_-72.047.reload)
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %0, %25
  br i1 %26, label %dec_label_pc_40a84, label %dec_label_pc_40a7f

dec_label_pc_40a7f:                               ; preds = %dec_label_pc_40a5b
  call void @__stack_chk_fail()
  br label %dec_label_pc_40a84

dec_label_pc_40a84:                               ; preds = %dec_label_pc_40a7f, %dec_label_pc_40a5b
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_40b6b:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int_listen_socket_preinc_22_goodB2G2Global, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_40bb2, label %dec_label_pc_40b84

dec_label_pc_40b84:                               ; preds = %dec_label_pc_40b6b
  %2 = icmp eq i32 %data, 2147483647
  br i1 %2, label %dec_label_pc_40ba3, label %dec_label_pc_40b8d

dec_label_pc_40b8d:                               ; preds = %dec_label_pc_40b84
  %3 = add i32 %data, 1
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_40bb2

dec_label_pc_40ba3:                               ; preds = %dec_label_pc_40b84
  call void @printLine(ptr @global_var_875f0)
  br label %dec_label_pc_40bb2

dec_label_pc_40bb2:                               ; preds = %dec_label_pc_40ba3, %dec_label_pc_40b8d, %dec_label_pc_40b6b
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

