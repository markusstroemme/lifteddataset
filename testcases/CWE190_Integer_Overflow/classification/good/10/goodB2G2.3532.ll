@global_var_68228 = external constant [3 x i8]
@global_var_68240 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_9c068 = external local_unnamed_addr global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_14eb9:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = load i32, ptr @global_var_9c068, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_14f45, label %dec_label_pc_14f07

dec_label_pc_14f07:                               ; preds = %dec_label_pc_14eb9
  %3 = load ptr, ptr @global_var_9c070, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_68228, ptr nonnull %stack_var_-24)
  %.pr = load i32, ptr %stack_var_-24, align 4
  %5 = load i32, ptr @global_var_9c068, align 4
  %6 = icmp eq i32 %5, 0
  %7 = icmp eq i32 %.pr, 0
  %or.cond = or i1 %7, %6
  br i1 %or.cond, label %dec_label_pc_14f45, label %dec_label_pc_14f18

dec_label_pc_14f18:                               ; preds = %dec_label_pc_14f07
  %8 = icmp ult i32 %.pr, 2147483647
  br i1 %8, label %dec_label_pc_14f22, label %dec_label_pc_14f36

dec_label_pc_14f22:                               ; preds = %dec_label_pc_14f18
  %9 = mul i32 %.pr, 2
  call void @printUnsignedLine(i32 %9)
  br label %dec_label_pc_14f45

dec_label_pc_14f36:                               ; preds = %dec_label_pc_14f18
  call void @printLine(ptr @global_var_68240)
  br label %dec_label_pc_14f45

dec_label_pc_14f45:                               ; preds = %dec_label_pc_14eb9, %dec_label_pc_14f36, %dec_label_pc_14f22, %dec_label_pc_14f07
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_14f5a, label %dec_label_pc_14f55

dec_label_pc_14f55:                               ; preds = %dec_label_pc_14f45
  call void @__stack_chk_fail()
  br label %dec_label_pc_14f5a

dec_label_pc_14f5a:                               ; preds = %dec_label_pc_14f55, %dec_label_pc_14f45
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

