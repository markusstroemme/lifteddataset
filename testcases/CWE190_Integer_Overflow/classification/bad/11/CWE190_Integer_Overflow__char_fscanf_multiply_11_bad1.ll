@global_var_6c8f8 = external constant [3 x i8]
@global_var_76cf3 = external constant [6 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr

define void @anon0() local_unnamed_addr {
dec_label_pc_1024a:
  %stack_var_-18 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 32, ptr %stack_var_-18, align 1
  %1 = call i32 @globalReturnsTrue()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_10299, label %dec_label_pc_10277

dec_label_pc_10277:                               ; preds = %dec_label_pc_1024a
  %3 = load ptr, ptr @global_var_a5080, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_6c8f8, ptr nonnull %stack_var_-18)
  br label %dec_label_pc_10299

dec_label_pc_10299:                               ; preds = %dec_label_pc_10277, %dec_label_pc_1024a
  %5 = call i32 @globalReturnsTrue()
  %6 = icmp eq i32 %5, 0
  %7 = load i8, ptr %stack_var_-18, align 1
  %8 = icmp slt i8 %7, 1
  %or.cond = or i1 %6, %8
  br i1 %or.cond, label %dec_label_pc_102c3, label %dec_label_pc_102af

dec_label_pc_102af:                               ; preds = %dec_label_pc_10299
  %9 = mul i8 %7, 2
  call void @printHexCharLine(i8 %9)
  br label %dec_label_pc_102c3

dec_label_pc_102c3:                               ; preds = %dec_label_pc_102af, %dec_label_pc_10299
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_102d8, label %dec_label_pc_102d3

dec_label_pc_102d3:                               ; preds = %dec_label_pc_102c3
  call void @__stack_chk_fail()
  br label %dec_label_pc_102d8

dec_label_pc_102d8:                               ; preds = %dec_label_pc_102d3, %dec_label_pc_102c3
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

define i32 @globalReturnsTrue() local_unnamed_addr {
dec_label_pc_5a524:
  ret i32 1
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

