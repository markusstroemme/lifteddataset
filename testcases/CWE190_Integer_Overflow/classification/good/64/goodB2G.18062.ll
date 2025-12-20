@global_var_8a9a0 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_5bcd4:
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
  %11 = bitcast ptr %stack_var_-34 to ptr
  call void @anon0(ptr nonnull %11)
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_5bd57, label %dec_label_pc_5bd52

dec_label_pc_5bd52:                               ; preds = %dec_label_pc_5bcd4
  call void @__stack_chk_fail()
  br label %dec_label_pc_5bd57

dec_label_pc_5bd57:                               ; preds = %dec_label_pc_5bd52, %dec_label_pc_5bcd4
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_5be04:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i16
  %3 = icmp eq i16 %2, 32767
  br i1 %3, label %dec_label_pc_5be4f, label %dec_label_pc_5be2f

dec_label_pc_5be2f:                               ; preds = %dec_label_pc_5be04
  %4 = trunc i64 %1 to i32
  %5 = mul i32 %4, 65536
  %sext = add i32 %5, 65536
  %6 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %6)
  br label %dec_label_pc_5be5e

dec_label_pc_5be4f:                               ; preds = %dec_label_pc_5be04
  call void @printLine(ptr @global_var_8a9a0)
  br label %dec_label_pc_5be5e

dec_label_pc_5be5e:                               ; preds = %dec_label_pc_5be4f, %dec_label_pc_5be2f
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

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

