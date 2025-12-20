@global_var_84420 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr
@global_var_84416 = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_24bc0:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-20, align 4
  %1 = load ptr, ptr @global_var_b8080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_84416)
  %3 = bitcast ptr %stack_var_-20 to ptr
  call void @anon0(ptr nonnull %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_24c25, label %dec_label_pc_24c20

dec_label_pc_24c20:                               ; preds = %dec_label_pc_24bc0
  call void @__stack_chk_fail()
  br label %dec_label_pc_24c25

dec_label_pc_24c25:                               ; preds = %dec_label_pc_24c20, %dec_label_pc_24bc0
  ret void
}

define void @anon0(ptr %dataVoidPtr) local_unnamed_addr {
dec_label_pc_24cb4:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %.off = add i32 %2, 46339
  %3 = icmp ugt i32 %.off, 92678
  br i1 %3, label %dec_label_pc_24d05, label %dec_label_pc_24cf0

dec_label_pc_24cf0:                               ; preds = %dec_label_pc_24cb4
  %4 = mul i32 %2, %2
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_24d15

dec_label_pc_24d05:                               ; preds = %dec_label_pc_24cb4
  call void @printLine(ptr @global_var_84420)
  br label %dec_label_pc_24d15

dec_label_pc_24d15:                               ; preds = %dec_label_pc_24d05, %dec_label_pc_24cf0
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

