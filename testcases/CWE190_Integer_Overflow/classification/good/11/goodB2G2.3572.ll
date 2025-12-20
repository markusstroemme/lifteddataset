@global_var_68278 = external constant [3 x i8]
@global_var_68290 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_1517e:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_151d0, label %dec_label_pc_151ae

dec_label_pc_151ae:                               ; preds = %dec_label_pc_1517e
  %3 = load ptr, ptr @global_var_9c070, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_68278, ptr nonnull %stack_var_-24)
  br label %dec_label_pc_151d0

dec_label_pc_151d0:                               ; preds = %dec_label_pc_151ae, %dec_label_pc_1517e
  %5 = call i32 @globalReturnsTrue()
  %6 = icmp eq i32 %5, 0
  %7 = load i32, ptr %stack_var_-24, align 4
  %8 = icmp eq i32 %7, 0
  %or.cond = or i1 %6, %8
  br i1 %or.cond, label %dec_label_pc_15212, label %dec_label_pc_151e5

dec_label_pc_151e5:                               ; preds = %dec_label_pc_151d0
  %9 = icmp ult i32 %7, 2147483647
  br i1 %9, label %dec_label_pc_151ef, label %dec_label_pc_15203

dec_label_pc_151ef:                               ; preds = %dec_label_pc_151e5
  %10 = mul i32 %7, 2
  call void @printUnsignedLine(i32 %10)
  br label %dec_label_pc_15212

dec_label_pc_15203:                               ; preds = %dec_label_pc_151e5
  call void @printLine(ptr @global_var_68290)
  br label %dec_label_pc_15212

dec_label_pc_15212:                               ; preds = %dec_label_pc_15203, %dec_label_pc_151ef, %dec_label_pc_151d0
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_15227, label %dec_label_pc_15222

dec_label_pc_15222:                               ; preds = %dec_label_pc_15212
  call void @__stack_chk_fail()
  br label %dec_label_pc_15227

dec_label_pc_15227:                               ; preds = %dec_label_pc_15222, %dec_label_pc_15212
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

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_550e7:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

