@global_var_75b88 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_39245:
  %stack_var_-34 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  %1 = call i32 @rand()
  %2 = urem i32 %1, 2
  %3 = icmp eq i32 %2, 0
  %4 = call i32 @rand()
  %5 = call i32 @rand()
  %6 = mul i32 %5, 32768
  %7 = call i32 @rand()
  %8 = xor i32 %7, %6
  %9 = sext i1 %3 to i32
  %storemerge.in = xor i32 %8, %9
  %10 = trunc i32 %storemerge.in to i16
  store i16 %10, ptr %stack_var_-34, align 2
  call void @anon0(ptr nonnull %stack_var_-34)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_392c8, label %dec_label_pc_392c3

dec_label_pc_392c3:                               ; preds = %dec_label_pc_39245
  call void @__stack_chk_fail()
  br label %dec_label_pc_392c8

dec_label_pc_392c8:                               ; preds = %dec_label_pc_392c3, %dec_label_pc_39245
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_39355:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i16
  %3 = icmp eq i16 %2, 32767
  br i1 %3, label %dec_label_pc_39390, label %dec_label_pc_39378

dec_label_pc_39378:                               ; preds = %dec_label_pc_39355
  %4 = trunc i64 %1 to i32
  %5 = mul i32 %4, 65536
  %sext = add i32 %5, 65536
  %6 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %6)
  br label %dec_label_pc_3939f

dec_label_pc_39390:                               ; preds = %dec_label_pc_39355
  call void @printLine(ptr @global_var_75b88)
  br label %dec_label_pc_3939f

dec_label_pc_3939f:                               ; preds = %dec_label_pc_39390, %dec_label_pc_39378
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

