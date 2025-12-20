@global_var_76bb0 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@0 = external global i32

define i64 @anon0() local_unnamed_addr {
dec_label_pc_45f1e:
  %rax.0.reg2mem = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = mul i32 %4, 1073741824
  %6 = call i32 @rand()
  %7 = mul i32 %6, 32768
  %8 = xor i32 %7, %5
  %9 = call i32 @rand()
  %10 = xor i32 %8, %9
  %11 = sext i1 %3 to i32
  %storemerge.in = xor i32 %10, %11
  %12 = icmp slt i32 %storemerge.in, 1
  br i1 %12, label %dec_label_pc_45fcd, label %dec_label_pc_45fa1

dec_label_pc_45fa1:                               ; preds = %dec_label_pc_45f1e
  %13 = icmp sgt i32 %storemerge.in, 1073741822
  br i1 %13, label %dec_label_pc_45fbe, label %dec_label_pc_45faa

dec_label_pc_45faa:                               ; preds = %dec_label_pc_45fa1
  %14 = mul i32 %storemerge.in, 2
  call void @printIntLine(i32 %14)
  br label %dec_label_pc_45fcd

dec_label_pc_45fbe:                               ; preds = %dec_label_pc_45fa1
  call void @printLine(ptr @global_var_76bb0)
  br label %dec_label_pc_45fcd

dec_label_pc_45fcd:                               ; preds = %dec_label_pc_45fbe, %dec_label_pc_45faa, %dec_label_pc_45f1e
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  store i64 0, ptr %rax.0.reg2mem, align 8
  br i1 %16, label %dec_label_pc_45fe2, label %dec_label_pc_45fdd

dec_label_pc_45fdd:                               ; preds = %dec_label_pc_45fcd
  call void @__stack_chk_fail()
  store i64 ptrtoint (ptr @0 to i64), ptr %rax.0.reg2mem, align 8
  br label %dec_label_pc_45fe2

dec_label_pc_45fe2:                               ; preds = %dec_label_pc_45fdd, %dec_label_pc_45fcd
  %rax.0.reload = load i64, ptr %rax.0.reg2mem, align 8
  ret i64 %rax.0.reload
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

