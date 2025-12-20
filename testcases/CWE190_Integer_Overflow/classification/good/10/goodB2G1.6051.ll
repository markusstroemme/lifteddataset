@global_var_72470 = external constant [4 x i8]
@global_var_72474 = external constant [21 x i8]
@global_var_72490 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9070 = external local_unnamed_addr global i32
@global_var_a92c0 = external local_unnamed_addr global i32
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_2025f:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load i32, ptr @global_var_a9070, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_202ac, label %dec_label_pc_2028a

dec_label_pc_2028a:                               ; preds = %dec_label_pc_2025f
  %3 = load ptr, ptr @global_var_a9080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_72470, ptr nonnull %stack_var_-20)
  br label %dec_label_pc_202ac

dec_label_pc_202ac:                               ; preds = %dec_label_pc_2028a, %dec_label_pc_2025f
  %5 = load i32, ptr @global_var_a92c0, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_202c7, label %dec_label_pc_202b6

dec_label_pc_202b6:                               ; preds = %dec_label_pc_202ac
  call void @printLine(ptr @global_var_72474)
  br label %dec_label_pc_20300

dec_label_pc_202c7:                               ; preds = %dec_label_pc_202ac
  %7 = load i16, ptr %stack_var_-20, align 2
  %8 = icmp slt i16 %7, 1
  br i1 %8, label %dec_label_pc_20300, label %dec_label_pc_202d0

dec_label_pc_202d0:                               ; preds = %dec_label_pc_202c7
  %9 = icmp sgt i16 %7, 16382
  br i1 %9, label %dec_label_pc_202f1, label %dec_label_pc_202da

dec_label_pc_202da:                               ; preds = %dec_label_pc_202d0
  %10 = mul i16 %7, 2
  %11 = sext i16 %10 to i32
  call void @printIntLine(i32 %11)
  br label %dec_label_pc_20300

dec_label_pc_202f1:                               ; preds = %dec_label_pc_202d0
  call void @printLine(ptr @global_var_72490)
  br label %dec_label_pc_20300

dec_label_pc_20300:                               ; preds = %dec_label_pc_202f1, %dec_label_pc_202da, %dec_label_pc_202c7, %dec_label_pc_202b6
  %12 = call i64 @__readfsqword(i64 40)
  %13 = icmp eq i64 %0, %12
  br i1 %13, label %dec_label_pc_20315, label %dec_label_pc_20310

dec_label_pc_20310:                               ; preds = %dec_label_pc_20300
  call void @__stack_chk_fail()
  br label %dec_label_pc_20315

dec_label_pc_20315:                               ; preds = %dec_label_pc_20310, %dec_label_pc_20300
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

