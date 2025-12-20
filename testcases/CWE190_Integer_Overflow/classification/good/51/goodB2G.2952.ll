@global_var_67cc8 = external constant [54 x i8]
@global_var_70d9e = external constant [4 x i8]
@global_var_9c070 = external global ptr
@global_var_67cbe = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_1232a:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_9c070, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_67cbe)
  call void @anon0(i32 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_1238d, label %dec_label_pc_12388

dec_label_pc_12388:                               ; preds = %dec_label_pc_1232a
  call void @__stack_chk_fail()
  br label %dec_label_pc_1238d

dec_label_pc_1238d:                               ; preds = %dec_label_pc_12388, %dec_label_pc_1232a
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_123f8:
  %0 = icmp eq i32 %data, -1
  br i1 %0, label %dec_label_pc_12422, label %dec_label_pc_1240d

dec_label_pc_1240d:                               ; preds = %dec_label_pc_123f8
  %1 = add i32 %data, 1
  call void @printUnsignedLine(i32 %1)
  br label %dec_label_pc_12431

dec_label_pc_12422:                               ; preds = %dec_label_pc_123f8
  call void @printLine(ptr @global_var_67cc8)
  br label %dec_label_pc_12431

dec_label_pc_12431:                               ; preds = %dec_label_pc_12422, %dec_label_pc_1240d
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_54bd7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_54bfa, label %dec_label_pc_54bee

dec_label_pc_54bee:                               ; preds = %dec_label_pc_54bd7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_54bfa

dec_label_pc_54bfa:                               ; preds = %dec_label_pc_54bee, %dec_label_pc_54bd7
  ret void
}

define void @printUnsignedLine(i32 %unsignedNumber) local_unnamed_addr {
dec_label_pc_54ddc:
  %0 = call i32 (ptr, ...) @printf(ptr @global_var_70d9e, i32 %unsignedNumber)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

