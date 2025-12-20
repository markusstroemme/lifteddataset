@global_var_86de8 = external constant [54 x i8]
@global_var_8c81c = external constant [4 x i8]
@global_var_bc0b0 = external local_unnamed_addr global ptr
@global_var_86dde = external constant [3 x i8]

define void @anon1() local_unnamed_addr {
dec_label_pc_392ff:
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load ptr, ptr @global_var_bc0b0, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_86dde)
  call void @anon0(i32 0)
  %3 = call i64 @__readfsqword(i64 40)
  %4 = icmp eq i64 %0, %3
  br i1 %4, label %dec_label_pc_39362, label %dec_label_pc_3935d

dec_label_pc_3935d:                               ; preds = %dec_label_pc_392ff
  call void @__stack_chk_fail()
  br label %dec_label_pc_39362

dec_label_pc_39362:                               ; preds = %dec_label_pc_3935d, %dec_label_pc_392ff
  ret void
}

define void @anon0(i32 %data) local_unnamed_addr {
dec_label_pc_393cf:
  %0 = icmp eq i32 %data, 2147483647
  br i1 %0, label %dec_label_pc_393fd, label %dec_label_pc_393e7

dec_label_pc_393e7:                               ; preds = %dec_label_pc_393cf
  %1 = add i32 %data, 1
  call void @printIntLine(i32 %1)
  br label %dec_label_pc_3940c

dec_label_pc_393fd:                               ; preds = %dec_label_pc_393cf
  call void @printLine(ptr @global_var_86de8)
  br label %dec_label_pc_3940c

dec_label_pc_3940c:                               ; preds = %dec_label_pc_393fd, %dec_label_pc_393e7
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

