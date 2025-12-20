@global_var_8b018 = external constant [3 x i8]
@global_var_8ca9e = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_5defe:
  %stack_var_-24 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-24, align 4
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_5df50, label %dec_label_pc_5df2e

dec_label_pc_5df2e:                               ; preds = %dec_label_pc_5defe
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_8b018, ptr nonnull %stack_var_-24)
  br label %dec_label_pc_5df50

dec_label_pc_5df50:                               ; preds = %dec_label_pc_5df2e, %dec_label_pc_5defe
  %5 = call i32 @globalReturnsTrue()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_5df77, label %dec_label_pc_5df5e

dec_label_pc_5df5e:                               ; preds = %dec_label_pc_5df50
  %7 = load i32, ptr %stack_var_-24, align 4
  %8 = add i32 %7, 1
  store i32 %8, ptr %stack_var_-24, align 4
  call void @printUnsignedLine(i32 %8)
  br label %dec_label_pc_5df77

dec_label_pc_5df77:                               ; preds = %dec_label_pc_5df5e, %dec_label_pc_5df50
  %9 = call i64 @__readfsqword(i64 40)
  %10 = icmp eq i64 %0, %9
  br i1 %10, label %dec_label_pc_5df8c, label %dec_label_pc_5df87

dec_label_pc_5df87:                               ; preds = %dec_label_pc_5df77
  call void @__stack_chk_fail()
  br label %dec_label_pc_5df8c

dec_label_pc_5df8c:                               ; preds = %dec_label_pc_5df87, %dec_label_pc_5df77
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_6a34f:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_8ca9e, i32 %unsignedNumber)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_6a65a:
  ret i32 1
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

