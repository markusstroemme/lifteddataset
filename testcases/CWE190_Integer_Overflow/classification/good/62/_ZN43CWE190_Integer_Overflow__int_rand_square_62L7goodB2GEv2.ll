@global_var_77230 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_484c3:
  %rax.0.reg2mem = alloca i64, align 8
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = call i64 @anon1(ptr nonnull %stack_var_-24)
  %2 = load i32, ptr %stack_var_-24, align 4
  %3 = icmp eq i32 %2, -2147483648
  br i1 %3, label %dec_label_pc_48527, label %dec_label_pc_484fb

dec_label_pc_484fb:                               ; preds = %dec_label_pc_484c3
  %4 = sub i32 0, %2
  %5 = icmp slt i32 %4, 0
  %6 = icmp eq i1 %5, false
  %7 = select i1 %6, i32 %4, i32 %2
  %8 = icmp sgt i32 %7, 46339
  br i1 %8, label %dec_label_pc_48527, label %dec_label_pc_4850f

dec_label_pc_4850f:                               ; preds = %dec_label_pc_484fb
  %9 = mul i32 %2, %2
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_48536

dec_label_pc_48527:                               ; preds = %dec_label_pc_484fb, %dec_label_pc_484c3
  call void @printLine(ptr @global_var_77230)
  br label %dec_label_pc_48536

dec_label_pc_48536:                               ; preds = %dec_label_pc_48527, %dec_label_pc_4850f
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_4854b, label %dec_label_pc_48546

dec_label_pc_48546:                               ; preds = %dec_label_pc_48536
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_4854b

dec_label_pc_4854b:                               ; preds = %dec_label_pc_48546, %dec_label_pc_48536
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
}

define i64 @anon1(ptr %arg1) local_unnamed_addr {
dec_label_pc_485e3:
  %0 = call i32 @rand()
  %1 = urem i32 %0, 2
  %2 = icmp eq i32 %1, 0
  %3 = call i32 @rand()
  %4 = mul i32 %3, 1073741824
  %5 = call i32 @rand()
  %6 = mul i32 %5, 32768
  %7 = xor i32 %6, %4
  %8 = call i32 @rand()
  %9 = xor i32 %7, %8
  %10 = sext i1 %2 to i32
  %storemerge.in = xor i32 %9, %10
  %11 = ptrtoint ptr %arg1 to i64
  store i32 %storemerge.in, ptr %arg1, align 4
  ret i64 %11
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_5ddfb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_5de1e, label %dec_label_pc_5de12

dec_label_pc_5de12:                               ; preds = %dec_label_pc_5ddfb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_5de1e

dec_label_pc_5de1e:                               ; preds = %dec_label_pc_5de12, %dec_label_pc_5ddfb
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_5de56:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_7a994, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

