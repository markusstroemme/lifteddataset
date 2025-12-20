@global_var_6d578 = external constant [3 x i8]
@global_var_76cf3 = external constant [6 x i8]
@global_var_a5080 = external local_unnamed_addr global ptr
@global_var_a50e8 = external local_unnamed_addr global i32

define void @anon1(i8 %data) local_unnamed_addr {
dec_label_pc_16570:
  %0 = load i32, ptr @global_var_a50e8, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_165a4, label %dec_label_pc_1658b

dec_label_pc_1658b:                               ; preds = %dec_label_pc_16570
  %2 = mul i8 %data, %data
  call void @printHexCharLine(i8 %2)
  br label %dec_label_pc_165a4

dec_label_pc_165a4:                               ; preds = %dec_label_pc_1658b, %dec_label_pc_16570
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_165a7:
  %stack_var_-17 = alloca i8, align 1
  %0 = call i64 @__readfsqword(i64 40)
  store i8 32, ptr %stack_var_-17, align 1
  %1 = load ptr, ptr @global_var_a5080, align 8
  %2 = call i32 (ptr, ptr, ...) @fscanf(ptr %1, ptr @global_var_6d578, ptr nonnull %stack_var_-17)
  store i32 1, ptr @global_var_a50e8, align 4
  %3 = load i8, ptr %stack_var_-17, align 1
  call void @anon1(i8 %3)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %0, %4
  br i1 %5, label %dec_label_pc_16615, label %dec_label_pc_16610

dec_label_pc_16610:                               ; preds = %dec_label_pc_165a7
  call void @__stack_chk_fail()
  br label %dec_label_pc_16615

dec_label_pc_16615:                               ; preds = %dec_label_pc_16610, %dec_label_pc_165a7
  ret void
}

define void @printHexCharLine(i8 %charHex) local_unnamed_addr {
dec_label_pc_5a18e:
  %0 = sext i8 %charHex to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_76cf3, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @fscanf(ptr, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

