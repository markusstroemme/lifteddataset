@global_var_4a585 = external constant [5 x i8]
@global_var_6d188 = external local_unnamed_addr global i32

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_148ed:
  %0 = load i32, ptr @global_var_6d188, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_14916, label %dec_label_pc_14907

dec_label_pc_14907:                               ; preds = %dec_label_pc_148ed
  %2 = ptrtoint ptr %data to i64
  call void @printLongLine(i64 %2)
  br label %dec_label_pc_14916

dec_label_pc_14916:                               ; preds = %dec_label_pc_14907, %dec_label_pc_148ed
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_14919:
  %data_-32 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr inttoptr (i64 5 to ptr), ptr %data_-32, align 8
  store i32 1, ptr @global_var_6d188, align 4
  %1 = bitcast ptr %data_-32 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_1496f, label %dec_label_pc_1496a

dec_label_pc_1496a:                               ; preds = %dec_label_pc_14919
  call void @__stack_chk_fail()
  br label %dec_label_pc_1496f

dec_label_pc_1496f:                               ; preds = %dec_label_pc_1496a, %dec_label_pc_14919
  ret void
}

define void @printLongLine(i64 %longNumber) local_unnamed_addr {
dec_label_pc_3cc1f:
  %0 = trunc i64 %longNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a585, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

