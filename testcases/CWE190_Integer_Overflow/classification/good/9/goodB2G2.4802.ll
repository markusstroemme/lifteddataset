@global_var_71978 = external constant [4 x i8]
@global_var_71998 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_1af0f:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load ptr, ptr @global_var_a9080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_71978, ptr nonnull %stack_var_-20)
  %3 = load i16, ptr %stack_var_-20, align 2
  %4 = icmp eq i16 %3, 32767
  br i1 %4, label %dec_label_pc_1af88, label %dec_label_pc_1af70

dec_label_pc_1af70:                               ; preds = %dec_label_pc_1af0f
  %5 = add i16 %3, 1
  %6 = sext i16 %5 to i32
  call void @printIntLine(i32 %6)
  br label %dec_label_pc_1af97

dec_label_pc_1af88:                               ; preds = %dec_label_pc_1af0f
  call void @printLine(ptr @global_var_71998)
  br label %dec_label_pc_1af97

dec_label_pc_1af97:                               ; preds = %dec_label_pc_1af88, %dec_label_pc_1af70
  %7 = call i64 @__readfsqword(i64 40)
  %8 = icmp eq i64 %0, %7
  br i1 %8, label %dec_label_pc_1afac, label %dec_label_pc_1afa7

dec_label_pc_1afa7:                               ; preds = %dec_label_pc_1af97
  call void @__stack_chk_fail()
  br label %dec_label_pc_1afac

dec_label_pc_1afac:                               ; preds = %dec_label_pc_1afa7, %dec_label_pc_1af97
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

