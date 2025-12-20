@global_var_732e0 = external constant [4 x i8]
@global_var_732e8 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_2750f:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load ptr, ptr @global_var_a9080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_732e0, ptr nonnull %stack_var_-24)
  %3 = load i32, ptr %stack_var_-24, align 4
  %4 = trunc i32 %3 to i16
  %5 = sub i16 0, %4
  %6 = icmp slt i16 %5, 0
  %7 = icmp eq i1 %6, false
  %8 = zext i16 %5 to i32
  %9 = select i1 %7, i32 %8, i32 %3
  %10 = trunc i32 %9 to i16
  %11 = icmp ult i16 %10, 182
  br i1 %11, label %dec_label_pc_27574, label %dec_label_pc_27590

dec_label_pc_27574:                               ; preds = %dec_label_pc_2750f
  %12 = urem i32 %3, 65536
  %narrow = mul i32 %3, 65536
  %sext3 = mul i32 %narrow, %12
  %13 = ashr exact i32 %sext3, 16
  call void @printIntLine(i32 %13)
  br label %dec_label_pc_2759f

dec_label_pc_27590:                               ; preds = %dec_label_pc_2750f
  call void @printLine(ptr @global_var_732e8)
  br label %dec_label_pc_2759f

dec_label_pc_2759f:                               ; preds = %dec_label_pc_27590, %dec_label_pc_27574
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_275b4, label %dec_label_pc_275af

dec_label_pc_275af:                               ; preds = %dec_label_pc_2759f
  call void @__stack_chk_fail()
  br label %dec_label_pc_275b4

dec_label_pc_275b4:                               ; preds = %dec_label_pc_275af, %dec_label_pc_2759f
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

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

