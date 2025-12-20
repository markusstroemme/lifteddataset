@global_var_83a90 = external constant [54 x i8]
@global_var_8c32c = external constant [4 x i8]
@global_var_b8080 = external local_unnamed_addr global ptr
@global_var_83a86 = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1fec6:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_b8080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_83a86)
  call void @anon0(i64 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_1ff2f, label %dec_label_pc_1ff2a

dec_label_pc_1ff2a:                               ; preds = %dec_label_pc_1fec6
  call void @__stack_chk_fail()
  br label %dec_label_pc_1ff2f

dec_label_pc_1ff2f:                               ; preds = %dec_label_pc_1ff2a, %dec_label_pc_1fec6
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_1ffb0:
  %0 = trunc i64 %myStruct to i32
  %1 = icmp slt i32 %0, 1
  br i1 %1, label %dec_label_pc_1fff7, label %dec_label_pc_1ffcb

dec_label_pc_1ffcb:                               ; preds = %dec_label_pc_1ffb0
  %2 = icmp sgt i32 %0, 1073741822
  br i1 %2, label %dec_label_pc_1ffe8, label %dec_label_pc_1ffd4

dec_label_pc_1ffd4:                               ; preds = %dec_label_pc_1ffcb
  %3 = mul i32 %0, 2
  call void @printIntLine(i32 %3)
  br label %dec_label_pc_1fff7

dec_label_pc_1ffe8:                               ; preds = %dec_label_pc_1ffcb
  call void @printLine(ptr @global_var_83a90)
  br label %dec_label_pc_1fff7

dec_label_pc_1fff7:                               ; preds = %dec_label_pc_1ffe8, %dec_label_pc_1ffd4, %dec_label_pc_1ffb0
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

