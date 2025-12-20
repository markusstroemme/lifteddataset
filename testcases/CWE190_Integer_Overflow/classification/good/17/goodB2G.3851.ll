@global_var_711f8 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_16ead:
  %0 = call i32 @rand()
  %1 = call i32 @rand()
  %2 = call i32 @rand()
  %3 = call i32 @rand()
  %4 = urem i32 %0, 2
  %5 = icmp eq i32 %4, 0
  %6 = mul i32 %1, 1073741824
  %7 = mul i32 %2, 32768
  %8 = xor i32 %7, %6
  %9 = xor i32 %8, %3
  %10 = sext i1 %5 to i32
  %storemerge2.in.le = xor i32 %9, %10
  %stack_var_-32.0.off = add i32 %storemerge2.in.le, 46339
  %11 = icmp ugt i32 %stack_var_-32.0.off, 92678
  br i1 %11, label %dec_label_pc_16edd, label %dec_label_pc_16ec8

dec_label_pc_16ec8:                               ; preds = %dec_label_pc_16ead
  %12 = mul i32 %storemerge2.in.le, %storemerge2.in.le
  call void @printIntLine(i32 %12)
  br label %dec_label_pc_16ef6

dec_label_pc_16edd:                               ; preds = %dec_label_pc_16ead
  call void @printLine(ptr @global_var_711f8)
  br label %dec_label_pc_16ef6

dec_label_pc_16ef6:                               ; preds = %dec_label_pc_16ec8, %dec_label_pc_16edd
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

declare i32 @puts(ptr) local_unnamed_addr

