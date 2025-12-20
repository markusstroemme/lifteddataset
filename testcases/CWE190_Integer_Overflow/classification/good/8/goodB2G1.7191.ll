@global_var_72e60 = external constant [4 x i8]
@global_var_72e64 = external constant [21 x i8]
@global_var_72e80 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define i32 @staticReturnsTrue.717() local_unnamed_addr {
dec_label_pc_25016:
  ret i32 1
}

define i32 @staticReturnsFalse.718() local_unnamed_addr {
dec_label_pc_25025:
  ret i32 0
}

define void @anon0() local_unnamed_addr {
dec_label_pc_250c6:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = call i32 @staticReturnsTrue.717()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_25117, label %dec_label_pc_250f5

dec_label_pc_250f5:                               ; preds = %dec_label_pc_250c6
  %3 = load ptr, ptr @global_var_a9080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_72e60, ptr nonnull %stack_var_-20)
  br label %dec_label_pc_25117

dec_label_pc_25117:                               ; preds = %dec_label_pc_250f5, %dec_label_pc_250c6
  %5 = call i32 @staticReturnsFalse.718()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_25136, label %dec_label_pc_25125

dec_label_pc_25125:                               ; preds = %dec_label_pc_25117
  call void @printLine(ptr @global_var_72e64)
  br label %dec_label_pc_25175

dec_label_pc_25136:                               ; preds = %dec_label_pc_25117
  %7 = load i16, ptr %stack_var_-20, align 2
  %8 = sub i16 0, %7
  %9 = icmp slt i16 %8, 0
  %10 = icmp eq i1 %9, false
  %.v = select i1 %10, i16 %8, i16 %7
  %11 = icmp ult i16 %.v, 182
  br i1 %11, label %dec_label_pc_25148, label %dec_label_pc_25166

dec_label_pc_25148:                               ; preds = %dec_label_pc_25136
  %12 = mul i16 %7, %7
  %13 = sext i16 %12 to i32
  call void @printIntLine(i32 %13)
  br label %dec_label_pc_25175

dec_label_pc_25166:                               ; preds = %dec_label_pc_25136
  call void @printLine(ptr @global_var_72e80)
  br label %dec_label_pc_25175

dec_label_pc_25175:                               ; preds = %dec_label_pc_25166, %dec_label_pc_25148, %dec_label_pc_25125
  %14 = call i64 @__readfsqword(i64 40)
  %15 = icmp eq i64 %0, %14
  br i1 %15, label %dec_label_pc_2518a, label %dec_label_pc_25185

dec_label_pc_25185:                               ; preds = %dec_label_pc_25175
  call void @__stack_chk_fail()
  br label %dec_label_pc_2518a

dec_label_pc_2518a:                               ; preds = %dec_label_pc_25185, %dec_label_pc_25175
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

