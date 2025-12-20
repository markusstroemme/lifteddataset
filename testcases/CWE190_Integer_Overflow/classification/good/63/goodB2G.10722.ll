@global_var_86f19 = external constant [3 x i8]
@global_var_86f20 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_39cef:
  %stack_var_-20 = alloca i32, align 4
  %0 = call i64 @__readfsqword(i64 40)
  store i32 0, ptr %stack_var_-20, align 4
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_86f19, ptr nonnull %stack_var_-20)
  call void @anon0(ptr nonnull %stack_var_-20)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_39d54, label %dec_label_pc_39d4f

dec_label_pc_39d4f:                               ; preds = %dec_label_pc_39cef
  call void @__stack_chk_fail()
  br label %dec_label_pc_39d54

dec_label_pc_39d54:                               ; preds = %dec_label_pc_39d4f, %dec_label_pc_39cef
  ret void
}

define void @anon0(ptr %dataPtr) local_unnamed_addr {
dec_label_pc_39dd5:
  %0 = alloca i64, align 8
  %1 = load i64, ptr %0, align 8
  %2 = trunc i64 %1 to i32
  %3 = icmp eq i32 %2, 2147483647
  br i1 %3, label %dec_label_pc_39e0d, label %dec_label_pc_39df7

dec_label_pc_39df7:                               ; preds = %dec_label_pc_39dd5
  %4 = add i32 %2, 1
  call void @printIntLine(i32 %4)
  br label %dec_label_pc_39e1c

dec_label_pc_39e0d:                               ; preds = %dec_label_pc_39dd5
  call void @printLine(ptr @global_var_86f20)
  br label %dec_label_pc_39e1c

dec_label_pc_39e1c:                               ; preds = %dec_label_pc_39e0d, %dec_label_pc_39df7
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

define void @printIntLine(i32 %intNumber) local_unnamed_addr {
dec_label_pc_6a1a5:
  %0 = zext i32 %intNumber to i64
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_8c81c, i64 %0)
  ret void
}

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @printf(ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

