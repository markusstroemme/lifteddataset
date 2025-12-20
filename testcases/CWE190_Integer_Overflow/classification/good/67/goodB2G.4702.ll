@global_var_83bb6 = external constant [4 x i8]
@global_var_83bc0 = external constant [54 x i8]
@global_var_8c829 = external constant [5 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr

define void @anon1() local_unnamed_addr {
dec_label_pc_1ab60:
  %myStruct_-32 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store i64 0, ptr %myStruct_-32, align 8
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_83bb6, ptr nonnull %myStruct_-32)
  %3 = load i64, ptr %myStruct_-32, align 8
  call void @anon0(i64 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_1abce, label %dec_label_pc_1abc9

dec_label_pc_1abc9:                               ; preds = %dec_label_pc_1ab60
  call void @__stack_chk_fail()
  br label %dec_label_pc_1abce

dec_label_pc_1abce:                               ; preds = %dec_label_pc_1abc9, %dec_label_pc_1ab60
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_1ac57:
  %0 = icmp eq i64 %myStruct, 9223372036854775807
  br i1 %0, label %dec_label_pc_1ac9a, label %dec_label_pc_1ac7f

dec_label_pc_1ac7f:                               ; preds = %dec_label_pc_1ac57
  %1 = add i64 %myStruct, 1
  call void @printLongLongLine(i64 %1)
  br label %dec_label_pc_1aca9

dec_label_pc_1ac9a:                               ; preds = %dec_label_pc_1ac57
  call void @printLine(ptr @global_var_83bc0)
  br label %dec_label_pc_1aca9

dec_label_pc_1aca9:                               ; preds = %dec_label_pc_1ac9a, %dec_label_pc_1ac7f
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

