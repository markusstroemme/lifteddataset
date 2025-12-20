@global_var_4a585 = external constant [5 x i8]
@global_var_6d0dc = external local_unnamed_addr global i32

define void @anon0(ptr %data) local_unnamed_addr {
dec_label_pc_d623:
  %0 = load i32, ptr @global_var_6d0dc, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_d64c, label %dec_label_pc_d63d

dec_label_pc_d63d:                                ; preds = %dec_label_pc_d623
  %2 = ptrtoint ptr %data to i64
  call void @printLongLongLine(i64 %2)
  br label %dec_label_pc_d64c

dec_label_pc_d64c:                                ; preds = %dec_label_pc_d63d, %dec_label_pc_d623
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_d64f:
  %data_-32 = alloca ptr, align 8
  %0 = call i64 @__readfsqword(i64 40)
  store ptr inttoptr (i64 5 to ptr), ptr %data_-32, align 8
  store i32 1, ptr @global_var_6d0dc, align 4
  %1 = bitcast ptr %data_-32 to ptr
  call void @anon0(ptr nonnull %1)
  %2 = call i64 @__readfsqword(i64 40)
  %3 = icmp eq i64 %0, %2
  br i1 %3, label %dec_label_pc_d6a5, label %dec_label_pc_d6a0

dec_label_pc_d6a0:                                ; preds = %dec_label_pc_d64f
  call void @__stack_chk_fail()
  br label %dec_label_pc_d6a5

dec_label_pc_d6a5:                                ; preds = %dec_label_pc_d6a0, %dec_label_pc_d64f
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_3cc4d:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_4a585, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

