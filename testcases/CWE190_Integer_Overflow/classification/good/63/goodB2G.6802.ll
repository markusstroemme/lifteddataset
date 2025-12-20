@global_var_843d9 = external constant [3 x i8]
@global_var_843e0 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_249cd:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-20, align 4
  %1 = load ptr, ptr @global_var_b8080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_843d9, ptr nonnull %stack_var_-20)
  call void @anon0(ptr nonnull %stack_var_-20)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_24a32, label %dec_label_pc_24a2d

dec_label_pc_24a2d:                               ; preds = %dec_label_pc_249cd
  call void @__stack_chk_fail()
  br label %dec_label_pc_24a32

dec_label_pc_24a32:                               ; preds = %dec_label_pc_24a2d, %dec_label_pc_249cd
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_24ab1:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %.off = add i32 %2, 46339
  %3 = icmp ugt i32 %.off, 92678
  br i1 %3, label %dec_label_pc_24afa, label %dec_label_pc_24ae5

dec_label_pc_24ae5:                               ; preds = %dec_label_pc_24ab1
  %4 = mul i32 %2, %2
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_24b0a

dec_label_pc_24afa:                               ; preds = %dec_label_pc_24ab1
  call void @printLine(ptr @global_var_843e0)
  br label %dec_label_pc_24b0a

dec_label_pc_24b0a:                               ; preds = %dec_label_pc_24afa, %dec_label_pc_24ae5
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6e78b:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6e7ae, label %dec_label_pc_6e7a2

dec_label_pc_6e7a2:                               ; preds = %dec_label_pc_6e78b
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6e7ae

dec_label_pc_6e7ae:                               ; preds = %dec_label_pc_6e7a2, %dec_label_pc_6e78b
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

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

