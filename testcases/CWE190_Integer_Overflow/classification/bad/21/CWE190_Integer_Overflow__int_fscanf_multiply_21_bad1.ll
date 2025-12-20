@global_var_835e8 = external constant [3 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr
@global_var_b8144 = external local_unnamed_addr global i32

define void @anon1(i32 %data) local_unnamed_addr {
dec_label_pc_1db4d:
  %0 = load i32, ptr @global_var_b8144, align 4
  %1 = icmp eq i32 %0, 0
  %2 = icmp slt i32 %data, 1
  %or.cond = or i1 %2, %1
  br i1 %or.cond, label %dec_label_pc_1db7e, label %dec_label_pc_1db6c

dec_label_pc_1db6c:                               ; preds = %dec_label_pc_1db4d
  %3 = mul i32 %data, 2
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_1db7e

dec_label_pc_1db7e:                               ; preds = %dec_label_pc_1db6c, %dec_label_pc_1db4d
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_1db81:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-20, align 4
  %1 = load ptr, ptr @global_var_b8080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_835e8, ptr nonnull %stack_var_-20)
  store i32 1, ptr @global_var_b8144, align 4
  %3 = load i32, ptr %stack_var_-20, align 4
  call void @anon1(i32 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_1dbee, label %dec_label_pc_1dbe9

dec_label_pc_1dbe9:                               ; preds = %dec_label_pc_1db81
  call void @__stack_chk_fail()
  br label %dec_label_pc_1dbee

dec_label_pc_1dbee:                               ; preds = %dec_label_pc_1dbe9, %dec_label_pc_1db81
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6e7e6:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c32c, i64 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

