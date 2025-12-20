@global_var_72218 = external constant [4 x i8]
@global_var_72220 = external constant [54 x i8]
@global_var_7a994 = external constant [4 x i8]
@global_var_a9080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_1ef28:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = load ptr, ptr @global_var_a9080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_72218, ptr nonnull %stack_var_-20)
  %3 = load i16, ptr %stack_var_-20, align 2
  %4 = icmp slt i16 %3, 1
  br i1 %4, label %dec_label_pc_1efa4, label %dec_label_pc_1ef74

dec_label_pc_1ef74:                               ; preds = %dec_label_pc_1ef28
  %5 = icmp sgt i16 %3, 16382
  br i1 %5, label %dec_label_pc_1ef95, label %dec_label_pc_1ef7e

dec_label_pc_1ef7e:                               ; preds = %dec_label_pc_1ef74
  %6 = mul i16 %3, 2
  %7 = sext i16 %6 to i32
  call void @printIntLine(i32 %7)
  br label %dec_label_pc_1efa4

dec_label_pc_1ef95:                               ; preds = %dec_label_pc_1ef74
  call void @printLine(ptr @global_var_72220)
  br label %dec_label_pc_1efa4

dec_label_pc_1efa4:                               ; preds = %dec_label_pc_1ef95, %dec_label_pc_1ef7e, %dec_label_pc_1ef28
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_1efb9, label %dec_label_pc_1efb4

dec_label_pc_1efb4:                               ; preds = %dec_label_pc_1efa4
  call void @__stack_chk_fail()
  br label %dec_label_pc_1efb9

dec_label_pc_1efb9:                               ; preds = %dec_label_pc_1efb4, %dec_label_pc_1efa4
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

