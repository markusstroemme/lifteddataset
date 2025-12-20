@global_var_873d0 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_3e2fb:
  %stack_var_-92.2.reg2mem = alloca i32, align 4
  %stack_var_-92.1.ph.reg2mem = alloca i32, align 4
  %stack_var_-92.0.ph.reg2mem = alloca i32, align 4
  %stack_var_-30 = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %stack_var_-8 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-8 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = call i32 @globalReturnsTrueOrFalse()
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @socket(i32 2, i32 1, i32 6)
  %5 = icmp eq i32 %4, -1
  br i1 %3, label %dec_label_pc_3e450, label %dec_label_pc_3e32f

dec_label_pc_3e32f:                               ; preds = %dec_label_pc_3e2fb
  store i32 0, ptr %stack_var_-92.2.reg2mem, align 4
  br i1 %5, label %dec_label_pc_3e568, label %dec_label_pc_3e35e

dec_label_pc_3e35e:                               ; preds = %dec_label_pc_3e32f
  %6 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %7 = call i16 @htons(i16 27015)
  %8 = bitcast ptr %stack_var_-56 to ptr
  %9 = call i32 @bind(i32 %4, ptr nonnull %8, i32 16)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %dec_label_pc_3e437.thread8, label %dec_label_pc_3e3aa

dec_label_pc_3e3aa:                               ; preds = %dec_label_pc_3e35e
  %11 = call i32 @listen(i32 %4, i32 5)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %dec_label_pc_3e437.thread8, label %dec_label_pc_3e3be

dec_label_pc_3e3be:                               ; preds = %dec_label_pc_3e3aa
  %13 = call i32 @accept(i32 %4, ptr null, ptr null)
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %dec_label_pc_3e437.thread8, label %dec_label_pc_3e3db

dec_label_pc_3e3db:                               ; preds = %dec_label_pc_3e3be
  %15 = call i32 @recv(i32 %13, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %16 = add i32 %15, 1
  %17 = icmp ult i32 %16, 2
  store i32 0, ptr %stack_var_-92.0.ph.reg2mem, align 4
  br i1 %17, label %dec_label_pc_3e441, label %dec_label_pc_3e402

dec_label_pc_3e402:                               ; preds = %dec_label_pc_3e3db
  %18 = sext i32 %15 to i64
  %19 = add i64 %0, -22
  %20 = add i64 %19, %18
  %21 = inttoptr i64 %20 to ptr
  store i8 0, ptr %21, align 1
  %22 = bitcast ptr %stack_var_-30 to ptr
  %23 = call i32 @atoi(ptr nonnull %22)
  store i32 %23, ptr %stack_var_-92.0.ph.reg2mem, align 4
  br label %dec_label_pc_3e441

dec_label_pc_3e437.thread8:                       ; preds = %dec_label_pc_3e3be, %dec_label_pc_3e3aa, %dec_label_pc_3e35e
  %24 = call i32 @close(i32 %4)
  store i32 0, ptr %stack_var_-92.2.reg2mem, align 4
  br label %dec_label_pc_3e568

dec_label_pc_3e441:                               ; preds = %dec_label_pc_3e402, %dec_label_pc_3e3db
  %stack_var_-92.0.ph.reload = load i32, ptr %stack_var_-92.0.ph.reg2mem, align 4
  %25 = call i32 @close(i32 %4)
  %26 = call i32 @close(i32 %13)
  store i32 %stack_var_-92.0.ph.reload, ptr %stack_var_-92.2.reg2mem, align 4
  br label %dec_label_pc_3e568

dec_label_pc_3e450:                               ; preds = %dec_label_pc_3e2fb
  store i32 0, ptr %stack_var_-92.2.reg2mem, align 4
  br i1 %5, label %dec_label_pc_3e568, label %dec_label_pc_3e47f

dec_label_pc_3e47f:                               ; preds = %dec_label_pc_3e450
  %27 = call ptr @memset(ptr nonnull %stack_var_-56, i32 0, i32 16)
  store i64 2, ptr %stack_var_-56, align 8
  %28 = call i16 @htons(i16 27015)
  %29 = bitcast ptr %stack_var_-56 to ptr
  %30 = call i32 @bind(i32 %4, ptr nonnull %29, i32 16)
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %dec_label_pc_3e558.thread13, label %dec_label_pc_3e4cb

dec_label_pc_3e4cb:                               ; preds = %dec_label_pc_3e47f
  %32 = call i32 @listen(i32 %4, i32 5)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %dec_label_pc_3e558.thread13, label %dec_label_pc_3e4df

dec_label_pc_3e4df:                               ; preds = %dec_label_pc_3e4cb
  %34 = call i32 @accept(i32 %4, ptr null, ptr null)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %dec_label_pc_3e558.thread13, label %dec_label_pc_3e4fc

dec_label_pc_3e4fc:                               ; preds = %dec_label_pc_3e4df
  %36 = call i32 @recv(i32 %34, ptr nonnull %stack_var_-30, i32 13, i32 0)
  %37 = add i32 %36, 1
  %38 = icmp ult i32 %37, 2
  store i32 0, ptr %stack_var_-92.1.ph.reg2mem, align 4
  br i1 %38, label %dec_label_pc_3e55e, label %dec_label_pc_3e523

dec_label_pc_3e523:                               ; preds = %dec_label_pc_3e4fc
  %39 = sext i32 %36 to i64
  %40 = add i64 %0, -22
  %41 = add i64 %40, %39
  %42 = inttoptr i64 %41 to ptr
  store i8 0, ptr %42, align 1
  %43 = bitcast ptr %stack_var_-30 to ptr
  %44 = call i32 @atoi(ptr nonnull %43)
  store i32 %44, ptr %stack_var_-92.1.ph.reg2mem, align 4
  br label %dec_label_pc_3e55e

dec_label_pc_3e558.thread13:                      ; preds = %dec_label_pc_3e4df, %dec_label_pc_3e4cb, %dec_label_pc_3e47f
  %45 = call i32 @close(i32 %4)
  store i32 0, ptr %stack_var_-92.2.reg2mem, align 4
  br label %dec_label_pc_3e568

dec_label_pc_3e55e:                               ; preds = %dec_label_pc_3e523, %dec_label_pc_3e4fc
  %stack_var_-92.1.ph.reload = load i32, ptr %stack_var_-92.1.ph.reg2mem, align 4
  %46 = call i32 @close(i32 %4)
  %47 = call i32 @close(i32 %34)
  store i32 %stack_var_-92.1.ph.reload, ptr %stack_var_-92.2.reg2mem, align 4
  br label %dec_label_pc_3e568

dec_label_pc_3e568:                               ; preds = %dec_label_pc_3e450, %dec_label_pc_3e32f, %dec_label_pc_3e558.thread13, %dec_label_pc_3e437.thread8, %dec_label_pc_3e55e, %dec_label_pc_3e441
  %stack_var_-92.2.reload = load i32, ptr %stack_var_-92.2.reg2mem, align 4
  %48 = call i32 @globalReturnsTrueOrFalse()
  %49 = icmp eq i32 %48, 0
  %50 = icmp eq i32 %stack_var_-92.2.reload, 2147483647
  br i1 %49, label %dec_label_pc_3e5a6, label %dec_label_pc_3e576

dec_label_pc_3e576:                               ; preds = %dec_label_pc_3e568
  br i1 %50, label %dec_label_pc_3e595, label %dec_label_pc_3e57f

dec_label_pc_3e57f:                               ; preds = %dec_label_pc_3e576
  %51 = add i32 %stack_var_-92.2.reload, 1
  call void @printIntLine(i32 %51)
  br label %dec_label_pc_3e5d4

dec_label_pc_3e595:                               ; preds = %dec_label_pc_3e576
  call void @printLine(ptr @global_var_873d0)
  br label %dec_label_pc_3e5d4

dec_label_pc_3e5a6:                               ; preds = %dec_label_pc_3e568
  br i1 %50, label %dec_label_pc_3e5c5, label %dec_label_pc_3e5af

dec_label_pc_3e5af:                               ; preds = %dec_label_pc_3e5a6
  %52 = add i32 %stack_var_-92.2.reload, 1
  call void @printIntLine(i32 %52)
  br label %dec_label_pc_3e5d4

dec_label_pc_3e5c5:                               ; preds = %dec_label_pc_3e5a6
  call void @printLine(ptr @global_var_873d0)
  br label %dec_label_pc_3e5d4

dec_label_pc_3e5d4:                               ; preds = %dec_label_pc_3e5c5, %dec_label_pc_3e5af, %dec_label_pc_3e595, %dec_label_pc_3e57f
  %53 = call i64 @__readfsqword(i64 40)
  %54 = icmp eq i64 %1, %53
  br i1 %54, label %dec_label_pc_3e5e9, label %dec_label_pc_3e5e4

dec_label_pc_3e5e4:                               ; preds = %dec_label_pc_3e5d4
  call void @__stack_chk_fail()
  br label %dec_label_pc_3e5e9

dec_label_pc_3e5e9:                               ; preds = %dec_label_pc_3e5e4, %dec_label_pc_3e5d4
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_6a678:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
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

declare i32 @rand() local_unnamed_addr

declare i32 @socket(i32, i32, i32) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

