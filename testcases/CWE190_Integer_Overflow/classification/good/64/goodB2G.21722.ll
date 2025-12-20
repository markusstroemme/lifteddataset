@global_var_8c6f0 = external constant [54 x i8]
@global_var_8c83e = external constant [4 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_69816:
  %stack_var_-36 = alloca i32, align 4
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
  store i32 %storemerge.in, ptr %stack_var_-36, align 4
  %12 = bitcast ptr %stack_var_-36 to ptr
  call void @anon0(ptr nonnull %12)
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %0, %13
  br i1 %14, label %dec_label_pc_698a3, label %dec_label_pc_6989e

dec_label_pc_6989e:                               ; preds = %dec_label_pc_69816
  call void @__stack_chk_fail()
  br label %dec_label_pc_698a3

dec_label_pc_698a3:                               ; preds = %dec_label_pc_6989e, %dec_label_pc_69816
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_69938:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp eq i32 %2, -1
  br i1 %3, label %dec_label_pc_69975, label %dec_label_pc_6995f

dec_label_pc_6995f:                               ; preds = %dec_label_pc_69938
  %4 = add i32 %2, 1
  call void @printUnsignedLine(i32 %4)
  br label %dec_label_pc_69984

dec_label_pc_69975:                               ; preds = %dec_label_pc_69938
  call void @printLine(ptr @global_var_8c6f0)
  br label %dec_label_pc_69984

dec_label_pc_69984:                               ; preds = %dec_label_pc_69975, %dec_label_pc_6995f
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

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8c83e, i32 %unsignedNumber)
  ret void
}

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

