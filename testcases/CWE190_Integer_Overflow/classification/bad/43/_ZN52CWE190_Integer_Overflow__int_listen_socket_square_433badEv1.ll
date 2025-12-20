@global_var_8c32c = external constant [4 x i8]
@0 = external global i32

define i64 @anon0(ptr %arg1) local_unnamed_addr {
dec_label_pc_660c5:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @socket(i32 2, i32 1, i32 6)
  %2 = icmp eq i32 %1, -1
  br i1 %2, label %dec_label_pc_66209, label %dec_label_pc_66113

dec_label_pc_66113:                               ; preds = %dec_label_pc_660c5
  %3 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %4 = call i16 @htons(i16 27015)
  %5 = bitcast ptr %stack_var_-56 to ptr
  %6 = call i32 @bind(i32 %1, ptr nonnull %5, i32 16)
  %7 = icmp eq i32 %6, -1
  %8 = icmp eq i1 %7, false
  %9 = icmp eq i1 %8, false
  br i1 %9, label %dec_label_pc_661f9.thread5, label %dec_label_pc_66164

dec_label_pc_66164:                               ; preds = %dec_label_pc_66113
  %10 = call i32 @listen(i32 %1, i32 5)
  %11 = icmp eq i32 %10, -1
  %12 = icmp eq i1 %11, false
  %13 = icmp eq i1 %12, false
  br i1 %13, label %dec_label_pc_661f9.thread5, label %dec_label_pc_6617d

dec_label_pc_6617d:                               ; preds = %dec_label_pc_66164
  %14 = call i32 @accept(i32 %1, ptr null, ptr null)
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %dec_label_pc_661f9.thread5, label %dec_label_pc_6619a

dec_label_pc_6619a:                               ; preds = %dec_label_pc_6617d
  %16 = call i32 @recv(i32 %14, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %17 = add i32 %16, 1
  %18 = icmp ult i32 %17, 2
  br i1 %18, label %dec_label_pc_661ff, label %dec_label_pc_661c1

dec_label_pc_661c1:                               ; preds = %dec_label_pc_6619a
  %19 = ptrtoint ptr %stack_var_-8 to i64
  %20 = sext i32 %16 to i64
  %21 = add i64 %19, -22
  %22 = add i64 %21, %20
  %23 = inttoptr i64 %22 to ptr
  store i8 0, ptr %23, align 1
  %24 = bitcast ptr %stack_var_-30 to ptr
  %25 = call i32 @atoi(ptr nonnull %24)
  store i32 %25, ptr %arg1, align 4
  br label %dec_label_pc_661ff

dec_label_pc_661f9.thread5:                       ; preds = %dec_label_pc_6617d, %dec_label_pc_66164, %dec_label_pc_66113
  %26 = call i32 @close(i32 %1)
  br label %dec_label_pc_66209

dec_label_pc_661ff:                               ; preds = %dec_label_pc_661c1, %dec_label_pc_6619a
  %27 = call i32 @close(i32 %1)
  %28 = call i32 @close(i32 %14)
  br label %dec_label_pc_66209

dec_label_pc_66209:                               ; preds = %dec_label_pc_660c5, %dec_label_pc_661f9.thread5, %dec_label_pc_661ff
  %29 = call i64 @__readfsqword(i64 40)
  %30 = icmp eq i64 %0, %29
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %30, label %dec_label_pc_6621e, label %dec_label_pc_66219

dec_label_pc_66219:                               ; preds = %dec_label_pc_66209
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_6621e

dec_label_pc_6621e:                               ; preds = %dec_label_pc_66219, %dec_label_pc_66209
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1() local_unnamed_addr {
dec_label_pc_66220:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = call i64 @anon0(ptr nonnull %stack_var_-24)
  %2 = load i32, ptr %stack_var_-24, align 4
  %3 = mul i32 %2, %2
  call void @printIntLine(i32 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %5, label %dec_label_pc_66279, label %dec_label_pc_66274

dec_label_pc_66274:                               ; preds = %dec_label_pc_66220
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_66279

dec_label_pc_66279:                               ; preds = %dec_label_pc_66274, %dec_label_pc_66220
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

