@global_var_bb9b5 = external constant [5 x i8]
@global_var_320 = external constant i32

define void @anon1() local_unnamed_addr {
dec_label_pc_327d3:
  %dataBadBuffer_-832 = alloca [50 x i64], align 8
  %stack_var_-824 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-824 to i64
  %2 = insertvalue [50 x i64] undef, i64 %1, 0
  store [50 x i64] %2, ptr %dataBadBuffer_-832, align 8
  %3 = getelementptr inbounds [50 x i64], ptr %dataBadBuffer_-832, i64 0, i64 0
  %4 = load i64, ptr %3, align 8
  call void @anon0(i64 %4)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_32831, label %dec_label_pc_3282c

dec_label_pc_3282c:                               ; preds = %dec_label_pc_327d3
  call void @__stack_chk_fail()
  br label %dec_label_pc_32831

dec_label_pc_32831:                               ; preds = %dec_label_pc_3282c, %dec_label_pc_327d3
  ret void
}

define void @anon0(i64 %myStruct) local_unnamed_addr {
dec_label_pc_328d9:
  %stack_var_-824 = alloca i64, align 8
  %0 = inttoptr i64 %myStruct to ptr
  %1 = call i64 @__readfsqword(i64 40)
  %2 = bitcast ptr %stack_var_-824 to ptr
  call void @__asm_rep_stosq_memset(ptr nonnull %2, i64 0, i64 100)
  %3 = call ptr @memcpy(ptr %0, ptr nonnull %stack_var_-824, i32 ptrtoint (ptr @global_var_320 to i32))
  call void @printLongLongLine(i64 %myStruct)
  %4 = call i64 @__readfsqword(i64 40)
  %5 = icmp eq i64 %1, %4
  br i1 %5, label %dec_label_pc_32968, label %dec_label_pc_32963

dec_label_pc_32963:                               ; preds = %dec_label_pc_328d9
  call void @__stack_chk_fail()
  br label %dec_label_pc_32968

dec_label_pc_32968:                               ; preds = %dec_label_pc_32963, %dec_label_pc_328d9
  ret void
}

define void @printLongLongLine(i64 %longLongIntNumber) local_unnamed_addr {
dec_label_pc_9cc39:
  %0 = trunc i64 %longLongIntNumber to i32
  %1 = call i32 (ptr, ...) @printf(ptr @global_var_bb9b5, i32 %0)
  ret void
}

declare i32 @printf(ptr, ...) local_unnamed_addr

declare ptr @memcpy(ptr, ptr, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare void @__asm_rep_stosq_memset(ptr, i64, i64) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

