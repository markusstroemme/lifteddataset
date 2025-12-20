@global_var_83aba = external constant [4 x i8]
@global_var_83ac0 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_1a354:
  %stack_var_-24 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %stack_var_-24, align 8
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_83aba, ptr nonnull %stack_var_-24)
  call void @anon0(ptr nonnull %stack_var_-24)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_1a3ba, label %dec_label_pc_1a3b5

dec_label_pc_1a3b5:                               ; preds = %dec_label_pc_1a354
  call void @__stack_chk_fail()
  br label %dec_label_pc_1a3ba

dec_label_pc_1a3ba:                               ; preds = %dec_label_pc_1a3b5, %dec_label_pc_1a354
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_1a449:
  %0 = icmp eq ptr %dataPtr, inttoptr (i64 9223372036854775807 to ptr)
  br i1 %0, label %dec_label_pc_1a48f, label %dec_label_pc_1a474

dec_label_pc_1a474:                               ; preds = %dec_label_pc_1a449
  %1 = ptrtoint ptr %dataPtr to i64
  %2 = add i64 %1, 1
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_1a49e

dec_label_pc_1a48f:                               ; preds = %dec_label_pc_1a449
  call void @printLine(ptr @global_var_83ac0)
  br label %dec_label_pc_1a49e

dec_label_pc_1a49e:                               ; preds = %dec_label_pc_1a48f, %dec_label_pc_1a474
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6a14a:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6a16d, label %dec_label_pc_6a161

dec_label_pc_6a161:                               ; preds = %dec_label_pc_6a14a
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6a16d

dec_label_pc_6a16d:                               ; preds = %dec_label_pc_6a161, %dec_label_pc_6a14a
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_6a268:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c829, i32 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

