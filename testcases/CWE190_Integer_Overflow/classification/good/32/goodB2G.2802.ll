@global_var_709c0 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_122fe:
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
  br i1 %12, label %dec_label_pc_123c7, label %dec_label_pc_1239b

dec_label_pc_1239b:                               ; preds = %dec_label_pc_122fe
  %13 = icmp sgt i32 %storemerge.in, 1073741822
  br i1 %13, label %dec_label_pc_123b8, label %dec_label_pc_123a4

dec_label_pc_123a4:                               ; preds = %dec_label_pc_1239b
  %14 = mul i32 %storemerge.in, 2
  call void @printIntLine(i32 %14)
  br label %dec_label_pc_123c7

dec_label_pc_123b8:                               ; preds = %dec_label_pc_1239b
  call void @printLine(ptr @global_var_709c0)
  br label %dec_label_pc_123c7

dec_label_pc_123c7:                               ; preds = %dec_label_pc_123b8, %dec_label_pc_123a4, %dec_label_pc_122fe
  %15 = call i64 @__readfsqword(i64 40)
  %16 = icmp eq i64 %0, %15
  br i1 %16, label %dec_label_pc_123dc, label %dec_label_pc_123d7

dec_label_pc_123d7:                               ; preds = %dec_label_pc_123c7
  call void @__stack_chk_fail()
  br label %dec_label_pc_123dc

dec_label_pc_123dc:                               ; preds = %dec_label_pc_123d7, %dec_label_pc_123c7
  ret void
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

