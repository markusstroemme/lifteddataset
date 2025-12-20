@global_var_72520 = external constant [4 x i8]
@global_var_72528 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_2085c:
  %stack_var_-22 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-22, align 2
  %1 = call i32 @globalReturnsTrueOrFalse()
  %2 = load ptr, ptr @global_var_a9080, align 8
  %3 = call i32 (ptr, ptr, ...) @fscanf(ptr %2, ptr @global_var_72520, ptr nonnull %stack_var_-22)
  %4 = call i32 @globalReturnsTrueOrFalse()
  %5 = icmp eq i32 %4, 0
  %6 = load i16, ptr %stack_var_-22, align 2
  %7 = icmp slt i16 %6, 1
  br i1 %5, label %dec_label_pc_2091a, label %dec_label_pc_208df

dec_label_pc_208df:                               ; preds = %dec_label_pc_2085c
  br i1 %7, label %dec_label_pc_20953, label %dec_label_pc_208e8

dec_label_pc_208e8:                               ; preds = %dec_label_pc_208df
  %8 = icmp sgt i16 %6, 16382
  br i1 %8, label %dec_label_pc_20909, label %dec_label_pc_208f2

dec_label_pc_208f2:                               ; preds = %dec_label_pc_208e8
  %9 = mul i16 %6, 2
  %10 = sext i16 %9 to i32
  call void @printIntLine(i32 %10)
  br label %dec_label_pc_20953

dec_label_pc_20909:                               ; preds = %dec_label_pc_208e8
  call void @printLine(ptr @global_var_72528)
  br label %dec_label_pc_20953

dec_label_pc_2091a:                               ; preds = %dec_label_pc_2085c
  br i1 %7, label %dec_label_pc_20953, label %dec_label_pc_20923

dec_label_pc_20923:                               ; preds = %dec_label_pc_2091a
  %11 = icmp sgt i16 %6, 16382
  br i1 %11, label %dec_label_pc_20944, label %dec_label_pc_2092d

dec_label_pc_2092d:                               ; preds = %dec_label_pc_20923
  %12 = mul i16 %6, 2
  %13 = sext i16 %12 to i32
  call void @printIntLine(i32 %13)
  br label %dec_label_pc_20953

dec_label_pc_20944:                               ; preds = %dec_label_pc_20923
  call void @printLine(ptr @global_var_72528)
  br label %dec_label_pc_20953

dec_label_pc_20953:                               ; preds = %dec_label_pc_20944, %dec_label_pc_2092d, %dec_label_pc_2091a, %dec_label_pc_20909, %dec_label_pc_208f2, %dec_label_pc_208df
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_20968, label %dec_label_pc_20963

dec_label_pc_20963:                               ; preds = %dec_label_pc_20953
  call void @__stack_chk_fail()
  br label %dec_label_pc_20968

dec_label_pc_20968:                               ; preds = %dec_label_pc_20963, %dec_label_pc_20953
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

define i32 @globalReturnsTrueOrFalse() local_unnamed_addr {
dec_label_pc_5e329:
  %0 = call i32 @rand()
  %1 = srem i32 %0, 2
  ret i32 %1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i32 @rand() local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

