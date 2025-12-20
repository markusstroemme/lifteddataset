@global_var_677d8 = external constant [3 x i8]
@global_var_677db = external constant [21 x i8]
@global_var_677f0 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_9c068 = external local_unnamed_addr global i32
@global_var_9c2c8 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_ff89:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load i32, ptr @global_var_9c068, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_ffd7, label %dec_label_pc_ffb5

dec_label_pc_ffb5:                                ; preds = %dec_label_pc_ff89
  %3 = load ptr, ptr @global_var_9c070, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_677d8, ptr nonnull %stack_var_-24)
  br label %dec_label_pc_ffd7

dec_label_pc_ffd7:                                ; preds = %dec_label_pc_ffb5, %dec_label_pc_ff89
  %5 = load i32, ptr @global_var_9c2c8, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_fff2, label %dec_label_pc_ffe1

dec_label_pc_ffe1:                                ; preds = %dec_label_pc_ffd7
  call void @printLine(ptr @global_var_677db)
  br label %dec_label_pc_1001e

dec_label_pc_fff2:                                ; preds = %dec_label_pc_ffd7
  %7 = load i32, ptr %stack_var_-24, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %dec_label_pc_1000f, label %dec_label_pc_fffa

dec_label_pc_fffa:                                ; preds = %dec_label_pc_fff2
  %9 = add i32 %7, 1
  call void @printUnsignedLine(i32 %9)
  br label %dec_label_pc_1001e

dec_label_pc_1000f:                               ; preds = %dec_label_pc_fff2
  call void @printLine(ptr @global_var_677f0)
  br label %dec_label_pc_1001e

dec_label_pc_1001e:                               ; preds = %dec_label_pc_1000f, %dec_label_pc_fffa, %dec_label_pc_ffe1
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_10033, label %dec_label_pc_1002e

dec_label_pc_1002e:                               ; preds = %dec_label_pc_1001e
  call void @__stack_chk_fail()
  br label %dec_label_pc_10033

dec_label_pc_10033:                               ; preds = %dec_label_pc_1002e, %dec_label_pc_1001e
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_54bd7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_54bfa, label %dec_label_pc_54bee

dec_label_pc_54bee:                               ; preds = %dec_label_pc_54bd7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_54bfa

dec_label_pc_54bfa:                               ; preds = %dec_label_pc_54bee, %dec_label_pc_54bd7
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

