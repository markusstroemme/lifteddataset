@global_var_73130 = external constant [4 x i8]
@global_var_73138 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_26896:
  %k_-28 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %k_-28, align 4
  %1 = load ptr, ptr @global_var_a9080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_73130, ptr nonnull %k_-28)
  %3 = load i32, ptr %k_-28, align 4
  %4 = trunc i32 %3 to i16
  %5 = sub i16 0, %4
  %6 = icmp slt i16 %5, 0
  %7 = icmp eq i1 %6, false
  %8 = zext i16 %5 to i32
  %9 = select i1 %7, i32 %8, i32 %3
  %10 = trunc i32 %9 to i16
  %11 = icmp ult i16 %10, 182
  br i1 %11, label %dec_label_pc_268a8, label %dec_label_pc_268c6

dec_label_pc_268a8:                               ; preds = %dec_label_pc_26896
  %12 = urem i32 %3, 65536
  %narrow = mul i32 %3, 65536
  %sext = mul i32 %narrow, %12
  %13 = ashr exact i32 %sext, 16
  call void @printIntLine(i32 %13)
  br label %dec_label_pc_268df

dec_label_pc_268c6:                               ; preds = %dec_label_pc_26896
  call void @printLine(ptr @global_var_73138)
  br label %dec_label_pc_268df

dec_label_pc_268df:                               ; preds = %dec_label_pc_268a8, %dec_label_pc_268c6
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_268f4, label %dec_label_pc_268ef

dec_label_pc_268ef:                               ; preds = %dec_label_pc_268df
  call void @__stack_chk_fail()
  br label %dec_label_pc_268f4

dec_label_pc_268f4:                               ; preds = %dec_label_pc_268ef, %dec_label_pc_268df
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

