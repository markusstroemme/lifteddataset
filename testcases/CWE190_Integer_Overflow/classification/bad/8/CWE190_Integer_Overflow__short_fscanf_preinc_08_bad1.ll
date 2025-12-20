@global_var_88f40 = external constant [4 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define i32 @staticReturnsTrue.1475() local_unnamed_addr {
dec_label_pc_4ed67:
  ret i32 1
}

define void @anon0() local_unnamed_addr {
dec_label_pc_4ed85:
  %stack_var_-20 = alloca i16, align 2
  %0 = call i64 @__readfsqword(i64 40)
  store i16 0, ptr %stack_var_-20, align 2
  %1 = call i32 @staticReturnsTrue.1475()
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_4edd6, label %dec_label_pc_4edb4

dec_label_pc_4edb4:                               ; preds = %dec_label_pc_4ed85
  %3 = load ptr, ptr @global_var_bc0b0, align 8
  %4 = call i32 (ptr, ptr, ...) @fscanf(ptr %3, ptr @global_var_88f40, ptr nonnull %stack_var_-20)
  br label %dec_label_pc_4edd6

dec_label_pc_4edd6:                               ; preds = %dec_label_pc_4edb4, %dec_label_pc_4ed85
  %5 = call i32 @staticReturnsTrue.1475()
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %dec_label_pc_4ee02, label %dec_label_pc_4ede4

dec_label_pc_4ede4:                               ; preds = %dec_label_pc_4edd6
  %7 = load i16, ptr %stack_var_-20, align 2
  %8 = add i16 %7, 1
  store i16 %8, ptr %stack_var_-20, align 2
  %9 = sext i16 %8 to i32
  call void @printIntLine(i32 %9)
  br label %dec_label_pc_4ee02

dec_label_pc_4ee02:                               ; preds = %dec_label_pc_4ede4, %dec_label_pc_4edd6
  %10 = call i64 @__readfsqword(i64 40)
  %11 = icmp eq i64 %0, %10
  br i1 %11, label %dec_label_pc_4ee17, label %dec_label_pc_4ee12

dec_label_pc_4ee12:                               ; preds = %dec_label_pc_4ee02
  call void @__stack_chk_fail()
  br label %dec_label_pc_4ee17

dec_label_pc_4ee17:                               ; preds = %dec_label_pc_4ee12, %dec_label_pc_4ee02
  ret void
}

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

