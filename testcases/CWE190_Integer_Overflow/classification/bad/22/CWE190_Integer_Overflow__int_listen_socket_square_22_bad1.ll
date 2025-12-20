@CWE190_Integer_Overflow__int_listen_socket_square_22_badGlobal = external local_unnamed_addr global i32
@global_var_8c32c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_40740:
  %stack_var_-72.047.reg2mem = alloca i32, align 4
  %stack_var_-72.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  store i32 0, ptr %stack_var_-72.047.reg2mem, align 4
  br i1 %2, label %dec_label_pc_4087a, label %dec_label_pc_40791

dec_label_pc_40791:                               ; preds = %dec_label_pc_40740
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %dec_label_pc_4086a.thread8, label %dec_label_pc_407dd

dec_label_pc_407dd:                               ; preds = %dec_label_pc_40791
  %8 = call i32 @listen(i32 %1, i32 5)
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %dec_label_pc_4086a.thread8, label %dec_label_pc_407f1

dec_label_pc_407f1:                               ; preds = %dec_label_pc_407dd
  %10 = call i32 @accept(i32 %1, ptr null, ptr null)
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %dec_label_pc_4086a.thread8, label %dec_label_pc_4080e

dec_label_pc_4080e:                               ; preds = %dec_label_pc_407f1
  %12 = call i32 @recv(i32 %10, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %13 = add i32 %12, 1
  %14 = icmp ult i32 %13, 2
  store i32 0, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br i1 %14, label %dec_label_pc_40870, label %dec_label_pc_40835

dec_label_pc_40835:                               ; preds = %dec_label_pc_4080e
  %15 = ptrtoint ptr %stack_var_-8 to i64
  %16 = sext i32 %12 to i64
  %17 = add i64 %15, -22
  %18 = add i64 %17, %16
  %19 = inttoptr i64 %18 to ptr
  store i8 0, ptr %19, align 1
  %20 = bitcast ptr %stack_var_-30 to ptr
  %21 = call i32 @atoi(ptr nonnull %20)
  store i32 %21, ptr %stack_var_-72.0.ph.reg2mem, align 4
  br label %dec_label_pc_40870

dec_label_pc_4086a.thread8:                       ; preds = %dec_label_pc_407f1, %dec_label_pc_407dd, %dec_label_pc_40791
  %22 = call i32 @close(i32 %1)
  store i32 0, ptr %stack_var_-72.047.reg2mem, align 4
  br label %dec_label_pc_4087a

dec_label_pc_40870:                               ; preds = %dec_label_pc_40835, %dec_label_pc_4080e
  %stack_var_-72.0.ph.reload = load i32, ptr %stack_var_-72.0.ph.reg2mem, align 4
  %23 = call i32 @close(i32 %1)
  %24 = call i32 @close(i32 %10)
  store i32 %stack_var_-72.0.ph.reload, ptr %stack_var_-72.047.reg2mem, align 4
  br label %dec_label_pc_4087a

dec_label_pc_4087a:                               ; preds = %dec_label_pc_40740, %dec_label_pc_4086a.thread8, %dec_label_pc_40870
  %stack_var_-72.047.reload = load i32, ptr %stack_var_-72.047.reg2mem, align 4
  store i32 1, ptr @CWE190_Integer_Overflow__int_listen_socket_square_22_badGlobal, align 4
  call void @anon1(i32 %stack_var_-72.047.reload)
  %25 = call i64 @__readfsqword(i64 40)
  %26 = icmp eq i64 %0, %25
  br i1 %26, label %dec_label_pc_408a3, label %dec_label_pc_4089e

dec_label_pc_4089e:                               ; preds = %dec_label_pc_4087a
  call void @__stack_chk_fail()
  br label %dec_label_pc_408a3

dec_label_pc_408a3:                               ; preds = %dec_label_pc_4089e, %dec_label_pc_4087a
  ret void
}

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_40bc9:
  %0 = load i32, ptr @CWE190_Integer_Overflow__int_listen_socket_square_22_badGlobal, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_40bf5, label %dec_label_pc_40be2

dec_label_pc_40be2:                               ; preds = %dec_label_pc_40bc9
  %2 = mul i32 %data, %data
  call void @printIntLine(i32 %2)
  br label %dec_label_pc_40bf5

dec_label_pc_40bf5:                               ; preds = %dec_label_pc_40be2, %dec_label_pc_40bc9
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

